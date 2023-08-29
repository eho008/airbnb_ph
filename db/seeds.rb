# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
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
rollercoaster1 = Rollercoaster.create!(user: User.find(1), name: "We all scream for icecream", location: "7 Boundary St, London", price: 150, description: "Get a tasty icecream after the ride")
rollercoaster1.photos.attach(io: URI.open("https://images.unsplash.com/photo-1580957920608-b5f3844ea00e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80"), filename: "icecream.jpg")
rollercoaster2 = Rollercoaster.create!(user: User.find(2), name: "Russian roulette", location: "56A Shoreditch High St, London", price: 140, description: "Who's going to survive this ride?")
rollercoaster2.photos.attach(io: URI.open("https://images.unsplash.com/photo-1500569051175-dc066c45410d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2340&q=80"), filename: "russianroulette.jpg")
rollercoaster3 = Rollercoaster.create!(user: User.find(3), name: "Nice and easy", location: "Jardin Anglaise, Paris", price: 210, description: "A great family-friendly ride for all ages")
rollercoaster3.photos.attach(io: URI.open("https://images.unsplash.com/photo-1542577731-55541be363d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80"), filename: "niceandeasy.jpg")
rollercoaster4 = Rollercoaster.create!(user: User.find(4), name: "Halloween street", location: "9th av, create! York", price: 250, description: "Trick or ride. Better not to eat much beforehand 🤭")
rollercoaster4.photos.attach(io: URI.open("https://images.unsplash.com/photo-1570444952548-756e3fc089fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80"), filename: "halloween.jpg")
rollercoaster5 = Rollercoaster.create!(user: User.find(5), name: "Fasten your seatbelts", location: "Red Square, Moscow", price: 120, description: "The bumpiest flight of your life. Make sure you buckle up!")
rollercoaster5.photos.attach(io: URI.open("https://images.unsplash.com/photo-1468940408761-2c4f03b0982c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2371&q=80"), filename: "fasten.jpg")
rollercoaster6 = Rollercoaster.create!(user: User.find(6), name: "Smile!", location: "Ocean Park, Hong Kong", price: 180, description: "This ride takes photos at every turn")
rollercoaster6.photos.attach(io: URI.open("https://images.unsplash.com/photo-1612276036430-e7240b151bd0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2531&q=80"), filename: "smile.jpg")

puts "Finished!"
