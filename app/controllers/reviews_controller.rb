class ReviewsController < ApplicationController
  before_action :set_review, only: [:new, :create]

  def new
    @review = Review.new
      authorize @review
  end

  def create
    @review = Review.new(review_params)
      authorize @review
    @review.article = @article
    @review.user = current_user
    @review.save
    redirect_to article_path(@article)
  end

   def edit
    @review = Review.find(params[:id])
      authorize @review
  end

  def update
    @review = Review.find(params[:id])
      authorize @review
    if @review.update(review_params)
      redirect_to article_path(@review.article_id)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @article = @review.article
    authorize @review
    @review.destroy
    redirect_to article_path(@review.article_id)
  end

  private

  def set_review
    @article = Article.find(params[:article_id])
  end

  def review_params
    params.require(:review).permit(:content, :title, :created_at, :user_id, :article_id)
  end

end
