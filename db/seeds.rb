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
bottega = { name: "Bottega", address: "marketview, Ottawa K2G 7JE", category: "italian" }
pizza_italian =  { name: "Pizza Italian", address: "Bay St, Ottawa K1S 6PQ", category: "italian" }
sushi = { name: "Sushi", address: "merivale rd, Ottawa K2G 9FE", category: "japanese" }
fresh_food = { name: "Fresh_food", address: "Lyon st, Ottawa K2g 7NE", category: "french" }
great_poutine = { name: "Great_poutine", address: "Queenway, Ottawa K2g 6BE", category: "belgian" }

[ bottega, pizza_italian, sushi, fresh_food, great_poutine ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"