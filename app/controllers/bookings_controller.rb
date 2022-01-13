class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :find_booking, only: %i[update destroy show edit]

  def index
    @bookings = Booking.all
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @booking.user = current_user
    @booking.animal = @animal
    @booking.save!
    redirect_to bookings_path
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  # def destroy
  #   @booking.destroy
  # end

  # def show
  # end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :price_booking)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

end
