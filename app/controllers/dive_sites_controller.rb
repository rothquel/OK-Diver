class DiveSitesController < ApplicationController
  def index
    @dive_sites = Dive_site.all
  end

  def show
    @dive_site = Dive_site.find(params[:id])
  end

  def new
    @dive_site = Dive_site.new
  end

  def create
    @dive_site = Dive_site.new(dive_site_params)
    @dive_site.user = current_user
    if @dive_site.save
      redirect dive_site_path(@dive_site)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def dive_site_params
    params.require[:dive_site].permit[:name, :description, :country, :address, :type]
  end
end
