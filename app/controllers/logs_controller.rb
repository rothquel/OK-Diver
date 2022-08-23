class LogsController < ApplicationController
  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    # @log.dive_number = @log.dive_number + 1
    @log.user = current_user
    if @log.save
      redirect_to log_path(@log)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @logs = Log.all
    @markers = @logs.dive_sites.geocoded.map do |dive_site|
      {
        lat: dive_site.latitude,
        lng: dive_site.longitude,
        info_window: render_to_string(partial: "info_window", locals: {dive_site: dive_site})
      }
    end
  end

  def show
    @log = Log.find(params[:id])
  end

  def edit
    @log = Log.find(params[:id])
  end

  def update
    @log = Log.find(params[:id])
    @log.update(log_params)
    redirect_to log_path
  end

  private
  def log_params
    params.require(:log).permit(:date, :dive_site_id, :dive_number, :depth, :time_in, :time_out, :air_temp, :water_temp, :bar_start, :bar_end, :wet_suit, :weight, :visibility, :comments, :dive_center, :photo)
  end
end
