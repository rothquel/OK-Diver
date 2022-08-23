class LogsController < ApplicationController
  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    @log.user = current_user
    if @log.save
      redirect log_path(@log)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @logs = Log.all
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
  end

  private
  def log_params
    params.require[:log].permit[:date, :dive_number, :depth, :time_in, :time_out, :air_temp, :water_temp, :bar_start, :bar_end, :wet_suit, :weight, :visibility, :comments, :dive_center]

  end
end
