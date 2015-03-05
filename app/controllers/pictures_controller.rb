class PicturesController < ApplicationController

def new
 @album = Album.find(params[:album_id])
end

def create
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.create(picture_params)
    redirect_to album_path(@album)
  end
  def destroy
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.find(params[:id])
    @picture.destroy
    debugger
    redirect_to album_path(@album)
  end
  def show
   @picture = Picture.find(params[:id])
   end
def index
  @picture = Picture.where(album_id: (params[:album_id]))
end
  private
    def picture_params
      params.require(:picture).permit(:avatar)
    end
end
