class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :edit, :destroy]

  def index
    @bookings = policy_scope(Band).all
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(band_params)
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(band_params)
    if @booking.save!

    else
      render :new
    end
  end

  def destroy
    @booking.destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_fee, :confirmation_status, :band_id)
  end

end
