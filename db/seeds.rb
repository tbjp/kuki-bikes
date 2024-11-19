require "open-uri"
require 'faker'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts "deleting all users and bikes..."

Booking.destroy_all

Bike.destroy_all

User.destroy_all

puts "doing fun shit..."
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts "creating users..."

user1 = User.new(email: "b.mikorski@gmail.com", first_name: "Bartek", last_name: "Mikorski", phone_number: "+48662402542")
user1.password = 'secret'
user1.save

user2 = User.new(email: "jarodmiz2018@gmail.com", first_name: "Jarod", last_name: "Mizgalski", phone_number: "+48662402542")
user2.password = 'secret'
user2.save

user3 = User.new(email: "tobypalethorpe@gmail.com", first_name: "Toby", last_name: "Palethorpe", phone_number: "+48662402542")
user3.password = 'secret'
user3.save

puts "creating bikes..."

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Tiger800a.jpg/1200px-Tiger800a.jpg").open
bike1 = Bike.new(brand: "Triumph", model: "Tiger", year: 2009, location: "Wroclaw", description: "Best bike ever", price_per_day: 6000, user: user1)
bike1.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike1.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Tiger800a.jpg/1200px-Tiger800a.jpg").open
bike2 = Bike.new(brand: "Triumph", model: "Tiger", year: 2009, location: "Wroclaw", description: "Best bike ever", price_per_day: 6000, user: user2)
bike2.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike2.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Tiger800a.jpg/1200px-Tiger800a.jpg").open
bike3 = Bike.new(brand: "Triumph", model: "Tiger", year: 2009, location: "Wroclaw", description: "Best bike ever", price_per_day: 6000, user: user3)
bike3.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike3.save

puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'
puts 'TOBY'

booking = Booking.new(start_date: Date.today, end_date: Date.today + 2, bike: bike2, user: user1, total_price: 12000, status: 0)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 5, bike: bike3, user: user2, total_price: 30000, status: 1)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 11235871, bike: bike1, user: user3, total_price: 999999, status: 2)
booking.save
