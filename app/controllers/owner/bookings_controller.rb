class Owner::BookingsController < ApplicationController

  def index
    @owner_bookings = current_user.bookings_as_owner
    @bikes = current_user.bikes
  end

  def update
    @owner_bookings = current_user.bookings_as_owner.find(params[:id])
    @owner_bookings.update(owner_bookings_params)
  end

  private

  def owner_bookings_params
    params.require(:booking).permit(:status)
  end
end
