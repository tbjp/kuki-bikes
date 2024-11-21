class Owner::BookingsController < ApplicationController

  def index
    @owner_bookings = current_user.bookings_as_owner
    @bikes = current_user.bikes
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(owner_bookings_params)
    redirect_to owner_bookings_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  private

  def owner_bookings_params
    params.require(:booking).permit(:status)
  end
end
