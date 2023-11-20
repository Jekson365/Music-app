class AlbumsController < ApplicationController
  before_action :check_user,only: [:new]
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    @album.author_id = current_author.id


    if @album.save
      flash[:notice] = "Album Created!"
      redirect_to current_author
    else
      render "new"
    end
  end

  def edit

  end
  def update

  end
  def destroy
    @album = Album.find(params[:id])

    @album.destroy

    redirect_to
  end
  private
  def album_params
    params.require(:album).permit(:title, :year,:song_count)
  end


  def check_user
    if !logged_in?
      flash[:notice] = "you need to be logged in"
      redirect_to login_path
    end
  end

end
