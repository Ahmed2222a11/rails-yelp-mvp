# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "012345678", category: "Dining"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "2569104687", category: "fraz"}
marghe = {name: "Marghe", address: "dgs", phone_number: "4054103687", category: "dsfdf"}
lolita =  {name: "Lolita", address: "efd", phone_number: "4010236845", category: "dfv"}
rate = {name: "Rate", address: "zef", phone_number: "4023048795", category: "zegqdv"}

[dishoom, pizza_east, marghe, lolita, rate].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
