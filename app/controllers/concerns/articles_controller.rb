class ArticlesController < ApplicationController

  def new
    @article=Article.new
  end
  def create
    #render plain: params[:article].inspect
    Article.create(params.require(:article).permit(:title,:description))

  end
end
