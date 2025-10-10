class FlightsController < ApplicationController
  def index
  if params[:departure_airport_id].present? && params[:arrival_airport_id].present? && params[:date].present?
    @flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], date: params[:date])
  else
    @flights = Flight.all
  end
  end
end
