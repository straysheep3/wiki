class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order("created_at DESC")
  end

  def show
    #code
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render "new"
    end
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private

    def find_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:content, :title)
    end

end
