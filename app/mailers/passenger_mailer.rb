class PassengerMailer < ApplicationMailer
  default from: "notifications@flightbooker.com"

  def confirmation_email(booking, passenger)
    @booking = booking
    @flight = booking.flight
    @passenger = passenger
    mail(to: passenger.email, subject: "Your flight has been booked, #{passenger.name}")
  end
end
