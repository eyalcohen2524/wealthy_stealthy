# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'generating 3 packages'

Package.create(
  price: 200,
  description: 'Look stylish in an instant',
  content: 'Fancy suit; rolex watch; sleek, modern glasses;'
  name: 'Styled Living'
)

Package.create(
  price: 500,
  description: 'Make your house look classy before your guests arrive',
  content: 'Tableware set (China) and Silver; 2 paintings; 1 Chandelier;',
  name: 'Classic home'
)

Package.create(
  price: 1500,
  description: 'Show your date that you\'re cooler than James Bond, but only for the night',
  content: 'Bond-style suit; Fingerprinted hand gun; Aston Martin (display only, no keys); Cocktail - shaken, not stirred;',
  name: 'James Bond'
)

puts 'Three packages generated'
puts "You now have #{Package.count} packages"
