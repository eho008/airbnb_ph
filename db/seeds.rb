# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Rollercoaster.destroy_all
User.destroy_all
Booking.destroy_all
Review.destroy_all

puts "Creating users..."
User.create!(id: 1, email: "hello@gmail.com", password: "123456")
User.create!(id: 2, email: "byebye@gmail.com", password: "567890")
User.create!(id: 3, email: "potato@gmail.com", password: "456788")
User.create!(id: 4, email: "pumpkin@gmail.com", password: "124533415")
User.create!(id: 5, email: "tomato@gmail.com", password: "56475467")
User.create!(id: 6, email: "france@gmail.com", password: "425656425")


puts "Creating rollercoasters..."
Rollercoaster.create!(id: 1, user: User.find(1), name: "We all scream for icecream", location: "7 Boundary St, London E2 7JE", price: 150, description: "Get a tasty icecream after the ride")
Rollercoaster.create!(id: 2, user: User.find(2), name: "Russian roulette", location: "56A Shoreditch High St, London E1 6PQ", price: 140, description: "Who's going to survive this ride?")
Rollercoaster.create!(id: 3, user: User.find(3), name: "Nice and easy", location: "Jardin Anglaise, Paris", price: 210, description: "A great family-friendly ride for all ages")
Rollercoaster.create!(id: 4, user: User.find(4), name: "Halloween street", location: "9th av, New York", price: 250, description: "Trick or ride. Better not to eat much beforehand 🤭")
Rollercoaster.create!(id: 5, user: User.find(5), name: "Fasten your seatbelts", location: "Red Square, Moscow", price: 120, description: "The bumpiest flight of your life. Make sure you buckle up!")
Rollercoaster.create!(id: 6, user: User.find(6), name: "Smile!", location: "Malcom X av, New York", price: 180, description: "This ride takes photos at every turn")

puts "Creating Bookings....."
Booking.create!(user_id: 1, rollercoaster_id: 1, date_begin: DateTime.new(2023, 9, 1, 1), date_end: DateTime.new(2023, 9, 5, 1))
Booking.create!(user_id: 2, rollercoaster_id: 2, date_begin: DateTime.new(2023, 9, 8, 1) , date_end: DateTime.new(2023, 9, 13, 1))
Booking.create!(user_id: 3, rollercoaster_id: 3, date_begin: DateTime.new(2023, 9, 15, 1), date_end: DateTime.new(2023, 9, 17, 1))
Booking.create!(user_id: 4, rollercoaster_id: 4, date_begin: DateTime.new(2023, 9, 18, 1), date_end: DateTime.new(2023, 9, 20, 1))

puts "Creating Reviews....."
Review.create!(body: "Amazing best ride ever", rating: 5, booking: Booking.first)
Review.create!(body: "Great ride", rating: 4, booking: Booking.first)
Review.create!(body: "Boring ride", rating: 2, booking: Booking.first)
Review.create!(body: "Average Ride", rating: 3, booking: Booking.first)



puts "Finished!"
