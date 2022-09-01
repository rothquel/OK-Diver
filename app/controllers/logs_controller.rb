class LogsController < ApplicationController
  def new
    if params[:log_id].present?
      @log = Log.find(params[:log_id])
    else
      @log = Log.new
    end
    @dive_site = DiveSite.find(params[:dive_site_id])
  end

  def create
    @log = Log.new(log_params)
    # @log.dive_number = @log.dive_number + 1
    @log.user = current_user
    @dive_site = DiveSite.find(params[:dive_site_id])
    @log.dive_site = @dive_site
    if @log.save
      redirect_to new_dive_site_review_path(@dive_site, log_id: @log.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    # Find all the logs belonging to the current user
    @my_logs = Log.where(user_id: current_user.id)
    @markers = current_user.dive_sites.geocoded.map do |dive_site|
      {
        lat: dive_site.latitude,
        lng: dive_site.longitude,
        info_window: render_to_string(partial: "dive_sites/info_window", formats: :html, locals: { dive_site: dive_site })
      }
    end
  end

  def show
    @log = Log.find(params[:id])
  end

  def edit
    @dive_site = DiveSite.find(params[:dive_site_id])
    @log = Log.find(params[:id])
  end

  def update
    @log = Log.find(params[:id])
    @log.update(log_params)

    if params[:breadcrumb] == 'review'
      redirect_to new_dive_site_review_path(params[:dive_site_id], log_id: @log.id)
    else
      redirect_to log_path(@log)
    end
  end

  private

  def log_params
    params.require(:log).permit(:date, :dive_site_id, :dive_number, :depth, :time_in, :time_out, :air_temp, :water_temp, :bar_start, :bar_end, :wet_suit, :weight, :visibility, :comments, :dive_center, :photo)
  end
end
