# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'

5.times do
  ingredients_attributes =
    { name: Faker::Food.ingredient }
  Ingredient.create!(ingredients_attributes)
end

5.times do
  ingredients_attributes =
    { name: Faker::Food.spice }
  Ingredient.create!(ingredients_attributes)
end

5.times do
  ingredients_attributes =
    { name: Faker::Food.fruits }
  Ingredient.create!(ingredients_attributes)
end

puts 'Finished!'
