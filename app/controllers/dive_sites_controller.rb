class DiveSitesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dive_sites = DiveSite.all
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
    # @dive_site.user = current_user

    if @dive_site.save
      redirect_to dive_site_path(@dive_site)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dive_site_params
    params.require(:dive_site).permit(:name, :description, :country, :address, :dive_type, :photo)
  end
end
