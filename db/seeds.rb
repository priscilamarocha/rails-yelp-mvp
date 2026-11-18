# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating restaurants..."
[
  { name: "Epicure", address: "75008 Paris", phone_number: "+33 1 53 43 43 40", category: "french" },
  { name: "Dishoom", address: "Shoreditch, London", phone_number: "+44 20 7420 9324", category: "italian" },
  { name: "Sushi Sano", address: "Kreuzberg, Berlin", phone_number: "+49 30 1234567", category: "japanese" },
  { name: "Golden Dragon", address: "Mitte, Berlin", phone_number: "+49 30 7654321", category: "chinese" },
  { name: "Frituur Max", address: "Antwerp", phone_number: "+32 3 123 45 67", category: "belgian" }
].each { |attrs| Restaurant.create!(attrs) }

puts "Created #{Restaurant.count} restaurants"
