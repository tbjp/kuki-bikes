class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @search = search_params
    if @search[:location].empty?
      @bikes = Bike.all
    else
      @bikes = Bike.location_search(@search[:location])
    end
    @markers = @bikes.geocoded.map do |bike|
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
