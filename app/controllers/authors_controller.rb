class AuthorsController < ApplicationController


  def index

  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(params.require(:author).permit(:title,:description,:start_date,:username,:password,:email))

    if @author.save
      redirect_to @author
    else
      render "new"
    end
  end

  def show

  end

  def edit

  end

  def update

  end


end
