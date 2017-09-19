class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

end
