# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bag.destroy_all
Photo.destroy_all

User.create(name: "Claire", username: "claire", password: "123", is_admin: true)
User.create(name: "Grant", username: "grant", password: "123", is_admin: false)

Bag.create(user_id: 2, designer: "Louis Vuitton", style: "Neverfull", size: "GM", material: "damier canvas", color: "brown", condition: "excellent", retail_price: 1620)

Photo.create(bag_id: 1, file: "IMG_0006.jpeg")

if (Bag.all.length == 0) 
  puts 'no items'
elsif (Photo.all.length == 0)
  puts 'no photos'
else
  'seeded'
end