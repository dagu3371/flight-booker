# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sfc = Airport.create!(name: "SFC")
nyc = Airport.create!(name: "NYC")
lax = Airport.create!(name: "LAX")
cal = Airport.create!(name: "CAL")
Flight.create!(from_airport: sfc, to_airport: nyc, duration: 10, start: 10.days.from_now)
Flight.create!(from_airport: nyc, to_airport: lax, duration: 10, start: 15.days.from_now)
Flight.create!(from_airport: nyc, to_airport: lax, duration: 10, start: 10.days.from_now)
Flight.create!(from_airport: cal, to_airport: lax, duration: 10, start: 15.days.from_now)
Flight.create!(from_airport: cal, to_airport: sfc, duration: 10, start: 12.days.from_now)