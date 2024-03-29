# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

20.times do |n|
  Movie.create!(
  overview: Faker::Hipster.word.capitalize,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number,
  category: ["chinese", "italian", "japanese", "french", "belgian"].shuffle.first
 )
end

puts "Finished!"
