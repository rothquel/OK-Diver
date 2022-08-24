class DiveSitesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # raise
    # if par niveau
    # If AND par niveau
    raise
    @dive_sites = DiveSite.all
    if params[:country].present?
      @dive_sites = @dive_sites.where(country: params[:country])
    end
    if params[:city].present?
      @dive_sites = @dive_sites.where(city: params[:city])
    end
    if params[:dive_type].present?
      @dive_sites = @dive_sites.where(dive_type: params[:dive_type])
    end
    if params[:level].present?
      @dive_sites = @dive_sites.where(level: params[:level])
    end

    @markers = @dive_sites.geocoded.map do |dive_site|
      {
        lat: dive_site.latitude,
        lng: dive_site.longitude,
        info_window: render_to_string(partial: "info_window", locals: {dive_site: dive_site})
      }
    end
  end

  def show
    @dive_site = DiveSite.find(params[:id])
  end

  def new
    @dive_site = DiveSite.new
  end

  def create
    @dive_site = DiveSite.new(dive_site_params)
    if @dive_site.save
      redirect_to new_dive_site_log_path(@dive_site)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dive_site_params
    params.require(:dive_site).permit(:name, :description, :country, :address, :dive_type, :photo)
  end
end
