class AlbumsController < ApplicationController
def new
@album =Album.new
end
def create

  @album = current_user.albums.new(album_params)
  if @album.save
    redirect_to @album
  else
    render 'new'
  end
end
def index
    @album = current_user.albums
  end
def show
@album = Album.find(params[:id])

end
def edit
  @album = Album.find(params[:id])
end
def destroy
      @album = Album.find(params[:id])
      @album.destroy

      redirect_to albums_path
  end
def update
  @album = Album.find(params[:id])

  if @album.update(album_params)
    redirect_to @album
  else
    render 'edit'
  end
end
end
private
  def album_params
    params.require(:album).permit(:title, :description, :photo)
  end