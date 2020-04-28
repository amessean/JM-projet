class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_article, only: [:show, :edit, :update]

  def index
    # @articles = Article.all
    @articles = policy_scope(Article)
  end

  def show
  end

  def new
    @article = Article.new
      authorize @article
  end

  def create
    @article = current_user.articles.build(article_params)
    authorize @article
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.user = current_user
    @article.destroy
      authorize @article
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
    authorize @article
  end

  def article_params
    params.require(:article).permit(:title, :content, :category, :user_id)
  end
end
