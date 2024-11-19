class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
    @booking = Booking.new
  end
end
