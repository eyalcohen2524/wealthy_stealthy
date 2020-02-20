require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning the database'

Rental.destroy_all
Package.destroy_all
User.destroy_all

puts 'database empty'


puts 'Generating users'

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

puts 'Users generated'
puts "You now have #{User.count} users"


puts 'generating packages'

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

pack4 = Package.new(
  price: 500,
  description: 'Told your friends you were an expert in the kitchen? Don\'t know your knife from your spatula? Become the master chef.',
  content: 'Culinary setup; Chef uniform; Cheap wine, Fancy bottle; Wine rack;',
  name: 'Moto'
)
pack4.user = tamara

image4a = open("https://res.cloudinary.com/milesbader/image/upload/v1582197618/g7so0x8e0p3a8ooqqqcl.jpg")
image4b = open("https://res.cloudinary.com/milesbader/image/upload/v1582197631/yavxxs8o6pxwrrhlvoxl.jpg")
image4c = open("https://res.cloudinary.com/milesbader/image/upload/v1582197642/dovcgijynjk5hd41jtcw.jpg")
image4d = open("https://res.cloudinary.com/milesbader/image/upload/v1582197622/b5s7l70grf16py8rb25i.jpg")
images4 = [image4a, image4b, image4c, image4d]
images4.each { |image | pack4.photos.attach(io: image, filename: 'seed')}

pack4.save!

pack5 = Package.new(
  price: 1000,
  description: 'Immerse yourself into an experience that every Queen dreams to live.',
  content: 'Gown; Table setting; Jewellery; Heels;',
  name: 'High Tea'
)
pack5.user = tamara

image5a = open("https://res.cloudinary.com/milesbader/image/upload/v1582197543/ar0bp1qheyq6wyqlkbu3.jpg")
image5b = open("https://res.cloudinary.com/milesbader/image/upload/v1582197577/bddh4xtfo8czf92xikdz.jpg")
image5c = open("https://res.cloudinary.com/milesbader/image/upload/v1582197563/gsbrrk5eicvf0tduiys9.jpg")
image5d = open("https://res.cloudinary.com/milesbader/image/upload/v1582197556/qer210e7oa01atsrlhti.jpg")
images = [image5a, image5b, image5c, image5d]
images.each { |image | pack5.photos.attach(io: image, filename: 'seed')}

pack5.save!

pack6 = Package.new(
  price: 800,
  description: 'Prove your word is your honor.',
  content: 'Purple Heart medal; Binoculars; Army gear; Utility kit',
  name: 'The General'
)
pack6.user = tamara

image6a = open("https://res.cloudinary.com/milesbader/image/upload/v1582198394/vn0qve6g1qulm3cm98oo.jpg")
image6b = open("https://res.cloudinary.com/milesbader/image/upload/v1582198399/t6bzz04zbrzqbwkpqqok.jpg")
image6c = open("https://res.cloudinary.com/milesbader/image/upload/v1582198409/orno4sn8qfbkwctzglkr.jpg")
image6d = open("https://res.cloudinary.com/milesbader/image/upload/v1582198389/sdqptelnuymsmnbgglfl.jpg")
images = [image6a, image6b, image6c, image6d]
images.each { |image | pack6.photos.attach(io: image, filename: 'seed')}

pack6.save!

pack7 = Package.new(
  price: 2000,
  description: 'Sophisticated Living.',
  content: 'Interior design collection, including furniture and plants',
  name: 'LUX'
)
pack7.user = tamara

image7a = open("https://res.cloudinary.com/milesbader/image/upload/v1582199370/cszalqoa3zracjpdy70y.jpg")
image7b = open("https://res.cloudinary.com/milesbader/image/upload/v1582199365/jep6obqenbjujqswjlwr.jpg")
image7c = open("https://res.cloudinary.com/milesbader/image/upload/v1582199385/gyeono3avmladw6wrm2m.jpg")
image7d = open("https://res.cloudinary.com/milesbader/image/upload/v1582199379/cexadxpkimxe5apfxyfu.jpg")
images = [image7a, image7b, image7c, image7d]
images.each { |image | pack7.photos.attach(io: image, filename: 'seed')}

pack7.save!

pack8 = Package.new(
  price: 1500,
  description: 'Fans',
  content: 'Fans; Mouth Grills; Famous hat; Generated followers for a day',
  name: 'LUX'
)

pack8.user = tamara

image8a = open("https://res.cloudinary.com/milesbader/image/upload/v1582202571/hnfagxln3ffxmc1lndmz.jpg")
image8b = open("https://res.cloudinary.com/milesbader/image/upload/v1582202583/xgjrgbqghse8op6nzoop.jpg")
image8c = open("https://res.cloudinary.com/milesbader/image/upload/v1582202578/jtiwxj7twfrn3ayo7tb7.jpg")
image8d = open("https://res.cloudinary.com/milesbader/image/upload/v1582202588/pwhawrokw5ejvyilg05i.jpg")
images = [image8a, image8b, image8c, image8d]
images.each { |image | pack8.photos.attach(io: image, filename: 'seed')}

pack8.save!

pack9 = Package.new(
  price: 1000,
  description: 'Sophiticated Living.',
  content: 'Stylish look; Expensive gadgets; Puppy swag; Watch',
  name: 'Chic It Up'
)

pack9.user = tamara

image9a = open("https://res.cloudinary.com/milesbader/image/upload/v1582203099/qgdtbnjuvwe6e6v81goj.jpg")
image9b = open("https://res.cloudinary.com/milesbader/image/upload/v1582203103/mtrsdmrajyrs3alv6cns.jpg")
image9c = open("https://res.cloudinary.com/milesbader/image/upload/v1582203109/vtudviloxmnq7hiogavp.jpg")
image9d = open("https://res.cloudinary.com/milesbader/image/upload/v1582203117/jmqmekdq3zrbifwsv569.jpg")
images = [image9a, image9b, image9c, image9d]
images.each { |image | pack9.photos.attach(io: image, filename: 'seed')}

pack9.save!

puts 'Packages generated'
puts "You now have #{Package.count} packages"

puts 'generating rentals'

rent1 = Rental.new(rental_date: Date.new(2020, 2, 27))
rent1.user = eyal
rent1.package = pack9
rent1.save!

rent2 = Rental.new(rental_date: Date.new(2020, 3, 20))
rent2.user = eyal
rent2.package = pack8
rent2.save!

rent3 = Rental.new(rental_date: Date.new(2020, 2, 26))
rent3.user = eyal
rent3.package = pack8
rent3.save!

rent4 = Rental.new(rental_date: Date.new(2020, 3, 5))
rent4.user = eyal
rent4.package = pack8
rent4.save!

puts 'Rentals generated'
puts "You now have #{Rental.count} rentals"

