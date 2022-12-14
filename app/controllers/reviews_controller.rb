class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @dive_site = DiveSite.find(params[:dive_site_id])
  end

  def create
    @dive_site = DiveSite.find(params[:dive_site_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.dive_site = @dive_site
    if @review.save
      redirect_to dive_site_path(@dive_site)
    else
      render 'reviews/new', status: :unprocessable_entity
      flash[:alert] = "Something went wrong."
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to dive_site_path(@review.dive_site)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to dive_site_path, status: :see_other, notice: "Review was deleted"
  end

  private

  def review_params
    params.require(:review).permit(:rating, :highlight, :tips)
  end
end
