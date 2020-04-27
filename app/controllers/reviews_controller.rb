class ReviewsController < ApplicationController
  before_action :set_review, only: [:new, :create, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @article.id = @review.article_id
    @review.user = current_user
    @review.save
    redirect_to article_path(@article)
  end

  def edit
  end

  def update
  end

  def destroy
    article = @review.article
    @review.destroy
    redirect_to article_path
  end

  private

  def set_review
    @article = Article.find(params[:article_id])
  end

  def review_params
    params.require(:review).permit(:content, :title, :created_at, :article_id, :user_id)
  end

end
