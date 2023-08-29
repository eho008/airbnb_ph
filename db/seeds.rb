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

puts "Creating users..."
User.create!(id: 1, email: "hello@gmail.com", password: "123456")
User.create!(id: 2, email: "byebye@gmail.com", password: "567890")
User.create!(id: 3, email: "potato@gmail.com", password: "456788")
User.create!(id: 4, email: "pumpkin@gmail.com", password: "124533415")
User.create!(id: 5, email: "tomato@gmail.com", password: "56475467")
User.create!(id: 6, email: "france@gmail.com", password: "425656425")


puts "Creating rollercoasters..."
Rollercoaster.create!(user: User.find(1), name: "We all scream for icecream", location: "7 Boundary St, London E2 7JE", price: 150, description: "Get a tasty icecream after the ride")
Rollercoaster.create!(user: User.find(2), name: "Russian roulette", location: "56A Shoreditch High St, London E1 6PQ", price: 140, description: "Who's going to survive this ride?")
Rollercoaster.create!(user: User.find(3), name: "Nice and easy", location: "Jardin Anglaise, Paris", price: 210, description: "A great family-friendly ride for all ages")
Rollercoaster.create!(user: User.find(4), name: "Halloween street", location: "9th av, New York", price: 250, description: "Trick or ride. Better not to eat much beforehand 🤭")
Rollercoaster.create!(user: User.find(5), name: "Fasten your seatbelts", location: "Red Square, Moscow", price: 120, description: "The bumpiest flight of your life. Make sure you buckle up!")
Rollercoaster.create!(user: User.find(6), name: "Smile!", location: "Malcom X av, New York", price: 180, description: "This ride takes photos at every turn")

puts "Finished!"
