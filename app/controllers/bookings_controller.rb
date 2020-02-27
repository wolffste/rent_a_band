class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :edit, :destroy]

  def index
    @bookings = policy_scope(Booking).all
  end

  def show
    authorize @booking
  end

  def new
    @band = Band.find(params[:band_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @band = Band.find(params[:band_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.band = @band
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    authorize @booking
  end

  def update
    @booking.update(booking_params)
    authorize @booking
    if @booking.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_fee, :confirmation_status, :band_id)
  end

end
