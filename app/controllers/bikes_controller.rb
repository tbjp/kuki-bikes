class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:search].nil? || params[:search].values.all?(&:blank?)
      @bikes = Bike.all
    else
      @search = search_params
      @bikes = Bike.location_search(@search[:location]) unless @search[:location].empty?

      available_bikes = Bike.left_joins(:bookings).where(
        'bookings.id IS NULL OR bookings.start_date > ? OR bookings.end_date < ?',
        @search[:end_date],
        @search[:start_date]
        )

      @bikes &= available_bikes
    end

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {bike: bike})
      }
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @booking = Booking.new
  end


  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:brand, :model, :year, :location, :description, :price_per_day, :photo)
  end

  def search_params
      params.require(:search).permit(:start_date, :end_date, :location)
  end
end
