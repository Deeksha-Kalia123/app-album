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
    if params[:tag]
    @album = Album.tagged_with(params[:tag])
  else
    @album = Album.all
  end
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
     respond_to do |format|
     format.html { redirect_to albums_url }
     format.json { head :no_content }
     format.js   { render :layout => false }
   #  Album.restore(@album.id, recursive: true)
   
  end
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
    params.require(:album).permit(:title, :description, :photo, :tag_list, :time_at)
  end
