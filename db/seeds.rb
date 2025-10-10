# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

airport_codes = [ "JFK", "LAX", "MIA", "SFO", "EWR", "ORD", "ATL", "DFW", "IAH", "IAD" ]

airport_codes.each do |code|
   Airport.find_or_create_by!(airport_code: code)
 end

 5.times do
  first_number = rand(0..9)
  first = Airport.find_by(airport_code: airport_codes[first_number])
  second_number = rand(0..9)
  while first_number == second_number
    second_number = rand(0..9)
  end
  second = Airport.find_by(airport_code: airport_codes[second_number])
  duration_o_flight = number = rand(1..8)
  num_o_pass = number = rand(1..6)
  Flight.find_or_create_by(departure_airport: first, arrival_airport: second, date: Time.new(2025, 10, 31), duration: "#{duration_o_flight} hour(s)", num_of_passengers: num_o_pass)
 end
