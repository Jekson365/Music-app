class SessionsController < ApplicationController
  def new
    # @author = Author.new
    # flash[:notice] = "hello world"
  end
  def create
    p "******************"

    password = params[:session][:password]
    email = params[:session][:email]

    author = Author.find_by(email: email)



    if author && author.authenticate(password)

      flash[:notice] = "user authenticated"

      session[:author_id] = author.id
      redirect_to author

    else
      render "new",status: :unprocessable_entity
    end

  end

  def destroy

    session[:author_id] = nil

    redirect_to root_path

  end
end
