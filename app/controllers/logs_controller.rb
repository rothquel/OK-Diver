class LogsController < ApplicationController
  def new
    @log = Log.new
    @dive_site = DiveSite.find(params[:dive_site_id])
  end

  def create
    @log = Log.new(log_params)
    # @log.dive_number = @log.dive_number + 1
    @log.user = current_user
    @dive_site = DiveSite.find(params[:dive_site_id])
    @log.dive_site = @dive_site
    if @log.save
      redirect_to new_dive_site_review_path(@dive_site)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    # @logs = Log.all
    # Find all the logs belonging to the current user
    @my_logs = Log.where(user_id: current_user.id)
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
