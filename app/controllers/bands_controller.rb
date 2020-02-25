class BandsController < ApplicationController
  before_action :set_band, only: [:show, :update, :edit, :destroy]
  skip_after_action :verify_policy_scoped, only: :index


  def index
    @bands = Band.all
  end

  def show
    authorize @band
  end

  def new
    @band = Band.new
    authorize @band
  end

  def create
    @band = Band.new(band_params)
    @band.user = current_user
    authorize @band
    if @band.save
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  def edit
    authorize @band
  end

  def update
    @band.update(band_params)
    authorize @band
    if @band.save!
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  def destroy
    authorize @band
    @band.destroy
    redirect_to bands_path
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :availability, :description, :fee, :category_id, :genre_id)
  end

end
