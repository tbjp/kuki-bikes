class BookingsController < ApplicationController

  def create
    @bike = Bike.find(booking_params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.status = 0
    @booking.user = current_user
    date_diff = @booking.end_date - @booking.start_date
    @booking.total_price = date_diff.to_i * @bike.price_per_day
    if @booking.save
      redirect_to bookings_path
    else
      render 'bikes/show', status: :unprocessable_entity # 422
    end
  end

  def index
    @bookings = current_user.bookings.order(id: :desc)
    @markers = @bookings.map do |booking|
      {
        lat: booking.bike.latitude,
        lng: booking.bike.longitude
      }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :bike_id)
  end

end
