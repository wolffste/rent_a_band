class BandsController < ApplicationController
  before_action :set_band, only: [:show, :update, :edit, :destroy]

  def index
    @bands = Band.all
  end

  def show
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    if @band.save!
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @band.update(band_params)
    if @band.save!
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  def destroy
    @band.destroy
    redirect_to bands_path
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :band_email, :availability, :description, :fee, :category, :genre)
  end

end
