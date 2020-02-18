# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning the database'

Rental.destroy_all if Rails.env.development?
Package.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

puts 'database empty'


puts 'Generating 2 users'

miles = User.create!(
  email: 'milesdbader@gmail.com',
  password: '123456789',
  username: 'milesdbader'
)

eyal = User.create!(
  email: 'eyalcohen2524@gmail.com',
  password: '123456789',
  username: 'eyalcohen2524'
)

puts 'Two users generated'
puts "You now have #{User.count} users"


puts 'generating 3 packages'

pack1 = Package.create(
  price: 200,
  description: 'Look stylish in an instant',
  content: 'Fancy suit; rolex watch; sleek, modern glasses;',
  name: 'Styled Living'
)
pack1.user = miles
pack1.save!

pack2 = Package.create(
  price: 500,
  description: 'Make your house look classy before your guests arrive',
  content: 'Tableware set (China) and Silver; 2 paintings; 1 Chandelier;',
  name: 'Classic home'
)
pack2.user = eyal
pack2.save!

pack3 = Package.create(
  price: 1500,
  description: 'Show your date that you\'re cooler than James Bond, but only for the night',
  content: 'Bond-style suit; Fingerprinted hand gun; Aston Martin (display only, no keys); Cocktail - shaken, not stirred;',
  name: 'James Bond'
)
pack3.user = eyal
pack3.save!

puts 'Three packages generated'
puts "You now have #{Package.count} packages"
