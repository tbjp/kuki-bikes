class Owner::BookingsController < ApplicationController

  def owner_index
    @owner_bookings = current_user.bookings_as_owner
    @bikes = current_user.bikes
  end
end
