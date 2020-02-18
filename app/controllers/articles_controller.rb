class ArticlesController < ApplicationController
  before_action :find_articles, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    #find_articles w before_action
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit
    #find_articles w before_action
  end

  def update
    #find_articles w before_action
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    #find_articles w before_action
    @article.destroy
    redirect_to articles_path
  end

  private

  def find_articles
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
