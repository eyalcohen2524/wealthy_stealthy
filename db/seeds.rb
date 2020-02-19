require 'open-uri'
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

miles = User.new(
  email: 'milesdbader@gmail.com',
  password: '123456789',
  username: 'milesdbader'
)
image = open('https://res.cloudinary.com/milesbader/image/upload/v1582110352/jajkc0qhfizmqiv2iw08.png')
miles.photo.attach(io: image, filename: 'seed')

eyal = User.new(
  email: 'eyalcohen2524@gmail.com',
  password: '123456789',
  username: 'eyalcohen2524'
)
image1 = open("https://res.cloudinary.com/milesbader/image/upload/v1582110378/zkfczsz3ujp0rfrtwxvp.jpg")
eyal.photo.attach(io: image1, filename: 'seed')

tamara = User.new(
  email: 'tara_art@live.com',
  password: '123456789',
  username: 'tara_art'
)
image2 = open("https://res.cloudinary.com/milesbader/image/upload/v1582121651/obcdiacrgszogefgfq3l.jpg")
tamara.photo.attach(io: image2, filename: 'seed')

miles.save!
eyal.save!
tamara.save!

puts 'Two users generated'
puts "You now have #{User.count} users"


puts 'generating 3 packages'

pack1 = Package.new(
  price: 200,
  description: 'Look stylish in an instant',
  content: 'Fancy suit; rolex watch; sleek, modern glasses;',
  name: 'Styled Living'
)
pack1.user = miles

image1a = open("https://res.cloudinary.com/milesbader/image/upload/v1582124239/l3kwrgdp3ugg3d9o8abf.jpg")
image1b = open("https://res.cloudinary.com/milesbader/image/upload/v1582124314/dntaipa7oegjyvfnlnvl.jpg")
image1c = open("https://res.cloudinary.com/milesbader/image/upload/v1582124308/vohsvqhgjbi5lz82glwi.jpg")
images = [image1a, image1b, image1c]
images.each { |image | pack1.photos.attach(io: image, filename: 'seed')}


pack1.save!

pack2 = Package.new(
  price: 500,
  description: 'Make your house look classy before your guests arrive',
  content: 'Tableware set (China) and Silver; 2 paintings; 1 Chandelier;',
  name: 'Classic home'
)
pack2.user = eyal

image2a = open("https://res.cloudinary.com/milesbader/image/upload/v1582124362/khtlydhvqhcg0ch5slau.jpg")
image2b = open("https://res.cloudinary.com/milesbader/image/upload/v1582124355/ojs08q6svdomsrapbraj.jpg")
image2c = open("https://res.cloudinary.com/milesbader/image/upload/v1582124343/ljq0jz7blgr70yz1bnro.jpg")
image2d = open("https://res.cloudinary.com/milesbader/image/upload/v1582124350/dedbaoste78taz8alwem.jpg")
images2 = [image2a, image2b, image2c, image2d]
images2.each { |image | pack2.photos.attach(io: image, filename: 'seed')}


pack2.save!

pack3 = Package.new(
  price: 1500,
  description: 'Show your date that you\'re cooler than James Bond, but only for the night',
  content: 'Bond-style suit; Fingerprinted hand gun; Aston Martin (display only, no keys); Cocktail - shaken, not stirred;',
  name: 'James Bond'
)
pack3.user = eyal

image3a = open("https://res.cloudinary.com/milesbader/image/upload/v1582124375/gggwzvlhbbxfwsdvh0l2.jpg")
image3b = open("https://res.cloudinary.com/milesbader/image/upload/v1582124369/n4ajzxlmzmd7agptx4tp.jpg")
image3c = open("https://res.cloudinary.com/milesbader/image/upload/v1582124380/u8hv9rbzc3yvqbv68u7f.jpg")
image3d = open("https://res.cloudinary.com/milesbader/image/upload/v1582124386/dtwgiav1c0s88gyowppy.jpg")
images3 = [image3a, image3b, image3c, image3d]
images3.each { |image | pack3.photos.attach(io: image, filename: 'seed')}

pack3.save!

puts 'Three packages generated'
puts "You now have #{Package.count} packages"
