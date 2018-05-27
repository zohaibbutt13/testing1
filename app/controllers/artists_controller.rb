class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @artist = Artist.create(artist_params)
    flash[:alert] = @artist.errors.full_messages unless @artist.save
    respond_to do |format|
      format.html { redirect_to artists_path }
    end
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    respond_to do |format|
      format.html
    end
  end

  def index
    @artists = Artist.all
    respond_to do |format|
      format.html
    end
  end

  def destroy
    @artist = Artist.find_by(id: params[:id])
    if @artist.destroy
      flash[:alert] = ["Artist successfuly deleted."]
    else
      flash[:alert] = @artist.errors.full_messages
    end
    respond_to do |format|
      format.html { redirect_to artists_path }
    end
  end

  def artist_params
    params.require(:artist).permit(:name, :facebook, :twitter)
  end
end
