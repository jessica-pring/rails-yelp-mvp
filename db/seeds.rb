# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "010101010101", category: "japanese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "010101010101", category: "belgian" }
kaf = { name: "Kaf", address: "5 Hyndland St, Glasgow", phone_number: "010101010101", category: "chinese" }
singlend = { name: "Singl-end", address: "263 Renfrew St, Glasgow", phone_number: "010101010101", category: "italian" }
papercup = { name: "Papercup", address: "603 Great Western Road, Glasgow", phone_number: "010101010101", category: "french" }

restaurants = [ dishoom, pizza_east, kaf, singlend, papercup ]
restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"