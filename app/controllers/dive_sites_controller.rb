class DiveSitesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    # Searchbar
    # raise
    if params[:query].present?
      sql_query = "country ILIKE :query"
      @dive_sites = DiveSite.where(sql_query, query: "%#{params[:query]}%")
    else
      # Thx to lazy load, active record will update dive_sites in accordance
      @dive_sites = DiveSite.all

      if params[:country].present?
        @dive_sites = @dive_sites.where("country ILIKE ?", "%#{params[:country]}%")
      end
      if params[:city].present?
        @dive_sites = @dive_sites.where("city ILIKE ?", "%#{params[:city]}%")
      end
      if params[:dive_type].present?
        @dive_sites = @dive_sites.where(dive_type: params[:dive_type])
      end
      if params[:level].present?
        @dive_sites = @dive_sites.where(level: params[:level])
      end
      if params[:tags].present?
        # tags = params[:tags].split(',')
        @dive_sites = @dive_sites.joins(:tags).where(tags: { id: params[:tags].map(&:to_i) })
      end
    end

    @markers = @dive_sites.geocoded.map do |dive_site|
      {
        lat: dive_site.latitude,
        lng: dive_site.longitude,
        info_window: render_to_string(partial: "info_window", formats: :html, locals: {dive_site: dive_site})
      }
    end
    # List of favorited dive_site
    if user_signed_in?
      @favorite_dive_sites = current_user.favorited_by_type('DiveSite')
    end

    # Implementing ajax in search
    respond_to do |format|
      format.html
      format.json do
        render json: {
          dive_sites: render_to_string(
            partial: "dive_sites/dive_sites_list",
            formats: :html,
            layout: false,
            locals: { dive_sites: @dive_sites }
          ),
          markers: @markers.to_json
        }
      end
    end
    # raise
  end

  def wishlist
    # @my_favorites = current_user.all_favorites
    @favorite_dive_sites = current_user.favorited_by_type('DiveSite')
  end

  def show
    @dive_sites = DiveSite.all
    @dive_site = DiveSite.find(params[:id])
    if @dive_site.latitude.nil?
      latitude = 45.501690
      longitude = -73.567253
    else
      latitude = @dive_site.latitude
      longitude = @dive_site.longitude
    end
    @markers = [
      {
        lat: latitude,
        lng: longitude,
        info_window: render_to_string(partial: "info_window", locals: {dive_site: @dive_site}),
        # image_url: helpers.asset_url("https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660853532/6_ebqm2m.png")
      }
    ]
  end

  def new
    if params[:format].present?
      @dive_site = DiveSite.find(params[:format])
    else
      @dive_site = DiveSite.new
    end
    # raise
  end

  def create
    @dive_site = DiveSite.new(dive_site_params)
    @tags = Tag.where(id: params[:dive_site][:tags])

    @tags.each do |tag|
      dive_site_tag = DiveSiteTag.new(dive_site: @dive_site, tag: tag)
      dive_site_tag.save
    end
    # raise
    if @dive_site.save
      redirect_to new_dive_site_log_path(@dive_site)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @dive_site = DiveSite.find(params[:id])
    @dive_site.update(dive_site_params)

    if params[:breadcrumb] == 'review'
      redirect_to new_dive_site_review_path(@dive_site)
    else
    redirect_to new_dive_site_log_path(@dive_site)
    end
  end

  def toggle_favorite
    @dive_site = DiveSite.find_by(id: params[:id])
    is_favorited = current_user.favorited?(@dive_site)

    is_favorited ? current_user.unfavorite(@dive_site) : current_user.favorite(@dive_site)
    # head :ok
    # raise
    respond_to do |format|
      format.html { redirect_to wishlist_path }
      format.json { render json: { toggle: is_favorited ? 'unfavorite' : 'favorite' } }
    end
  end

  private

  def dive_site_params
    params.require(:dive_site).permit(:name, :description, :country, :country_iso, :dive_type, :level, :city, :latitude, :longitude, :tags, photos: [])
  end
end
