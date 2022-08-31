class DiveSiteTagsController < ApplicationController
  def new
    @dive_site = DiveSite.Find(params[:dive_site_id])
    @dive_site_tag = DiveSiteTag.new
  end

  def create
    @dive_site = DiveSite.Find(params[:dive_site_id])
    @tags = Tag.where(id: params[:dive_site_tag][:tag])

    @tags.each do |tag|
      @dive_site_tag = DiveSiteTag.new(dive_site: @dive_site, tag: tag)
      render :new, status: :unprocessable_entity and return unless @dive_site_tag.save
    end
  end
end
