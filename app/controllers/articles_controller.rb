class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to root_path
  end

end
