class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @num_of_passengers = params[:num_of_passengers].to_i
    @booking = Booking.new

    1.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.build(booking_params)

    if @booking.save
      redirect_to @booking
      flash[:notice] = "You have registered."
    else
      render :new, status: :unprocessable_entity
      flash[:alert] = "Something is not right."
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight.id)
    @num_of_passengers = @flight.num_of_passengers.to_i
  end

  private

  def booking_params
      params.expect(booking: [ :flight_id, passengers_attributes: [ [ :name, :email, :_destroy ] ] ])
  end
end
