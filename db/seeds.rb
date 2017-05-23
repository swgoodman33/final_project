# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Listing.destroy_all
Photo.destroy_all

u = User.new
u.password = "12341234"
u.password_confirmation = "12341234"
u.email = "a@a.com"
u.save
puts "#{User.count} users in the database"

l1 = Listing.new
l1.bedrooms = 2
l1.price = 1000
l1.start_date = "2017/6/30"
l1.end_date = "2017/8/30"
l1.description = "Stuff"
l1.address = "3000 N Kimball, Chicago, IL"
l1.user_id = u.id
l1.save
puts "#{Listing.count} listings in the database"
