# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([{name: 'Admin'}])
User.create([{name: 'Ram'}])

Plane.create([{ name: "747", rows: 7, columns: 5 }])

Flight.create([{ flight_number: '822AUS', origin: "sydney", destination: "melbourne", date: "12/2/3030", plane_id: 1 }])
Flight.create([{ flight_number: '833AUS', origin: "sydney", destination: "melbourne", date: "13/5/3030", plane_id: 1 }])
Flight.create([{ flight_number: '822AUS', origin: "melbourne", destination: "queensland", date: "12/2/3030", plane_id: 1 }])

Reservation.create([{row: 13, column: "A", flight_id: 1, user_id: 1}])
Reservation.create([{row: 22, column: "B", flight_id: 1, user_id: 2}])