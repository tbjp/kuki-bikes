class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @msg_date = "for any date"
    @msg_location = 'anywhere'
    if params[:search].nil? || params[:search].values.all?(&:blank?)
      @bikes = Bike.all
    else
      @search = search_params

      if @search[:location].empty?
        @bikes = Bike.all
      else
        @bikes = Bike.location_search(@search[:location])
        @msg_location = "in #{@search[:location]}"
      end

      if @search[:start_date].blank? && @search[:end_date].blank?
        available_bikes = Bike.all
      else
        @start_date = @search[:start_date]
        @end_date = @search[:end_date]
        @start_date = Date.today if @search[:start_date].blank?
        @end_date = Date.today + 720 if @search[:end_date].blank?
        sd = Date.parse(@start_date).strftime("%d %b")
        ed = Date.parse(@end_date).strftime("%d %b %Y")
        @msg_date = "from #{sd} to #{ed}"


        available_bikes = Bike.left_joins(:bookings).where(
          'bookings.id IS NULL OR bookings.start_date > ? OR bookings.end_date < ?',
          @end_date,
          @start_date
          )
      end

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
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @start_date = Date.today if params[:start_date].blank?
    @end_date = Date.today + 2 if params[:end_date].blank?
    @user = current_user
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
