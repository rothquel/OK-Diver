class DiveSiteTagsController < ApplicationController
  def new
    @dive_site = DiveSite.Find(params[:dive_site_id])
    @dive_site_tag = DiveSiteTag.new
  end

  def create
    @dive_site = DiveSite.Find(params[:dive_site_id])
    @tags = Tag.where(id: params[:dive_site_tag][:tag])
  end
end
