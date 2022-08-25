class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def index_or_show
    @dive_sites = DiveSite.all
    @markers = @dive_sites.geocoded.map do |dive_site|
      {
        lat: dive_site.latitude,
        lng: dive_site.longitude,
        info_window: render_to_string(partial: "info_window", locals: {dive_site: dive_site})
      }
    end
  end

  def success
  end

  def profile
    @user = User.find(params[:id])
    @markers = @user.dive_sites.geocoded.map do |dive_site|
      {
        lat: dive_site.latitude,
        lng: dive_site.longitude,
        info_window: render_to_string(partial: "info_window", locals: {dive_site: dive_site})
      }
    end
  end
end
