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
puts 'BART'
puts 'BART'
puts 'BART'
puts 'BART'
puts 'BART'
puts 'BART'
puts 'working on master branch'

puts "creating users..."

file1 = URI.parse("https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMnh2QXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--b7712879057fd01ec0ef07b85086bf93883ec1b7/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lKYW5CbFp3WTZCa1ZVT2hOeVpYTnBlbVZmZEc5ZlptbHNiRnNJYVFISWFRSElld1k2Q1dOeWIzQTZEbUYwZEdWdWRHbHZiZz09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--23cdbdf9871e44adeb4d843a03b0793a5f08394b/profilowe.jpeg").open
user1 = User.new(email: "b.mikorski@gmail.com", first_name: "Bartek", last_name: "Mikorski", phone_number: "+48662402542")
user1.password = 'secret'
user1.avatar.attach(io: file1, filename: "bartek.png", content_type: "image/png")
user1.save

file2 = URI.parse("https://avatars.githubusercontent.com/u/174467341?v=4").open
user2 = User.new(email: "jarodmiz2018@gmail.com", first_name: "Jarod", last_name: "Mizgalski", phone_number: "+48662402542")
user2.password = 'secret'
user2.avatar.attach(io: file2, filename: "jarod.png", content_type: "image/png")
user2.save

file3 = URI.parse("https://avatars.githubusercontent.com/u/96312680?v=4").open
user3 = User.new(email: "tobypalethorpe@gmail.com", first_name: "Toby", last_name: "Palethorpe", phone_number: "+48662402542")
user3.password = 'secret'
user3.avatar.attach(io: file3, filename: "toby.png", content_type: "image/png")
user3.save

puts "creating bikes..."

file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989302/kuki-bikes/at5oyd7dbzpiivmhbag7.jpg").open
bike1 = Bike.new(brand: "Triumph", model: "Tiger", year: 2009, location: "Wroclaw", description: "Best all around bike", price_per_day: 8000, user: user1)
bike1.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike1.save
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989304/kuki-bikes/w4rcqnrhsfhucdzyarnr.jpg").open
bike2 = Bike.new(brand: "Yamaha", model: "XJ6N", year: 2013, location: "Wroclaw", description: "Feel the road", price_per_day: 9000, user: user2)
bike2.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike2.save
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989295/kuki-bikes/avqseobwsdsg2hfzpglb.jpg").open
bike3 = Bike.new(brand: "Ducati", model: "Scrambler", year: 2024, location: "Tokyo", description: "Best experience above all kind of bike", price_per_day: 13000, user: user3)
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989293/kuki-bikes/dzhiunyizq2p2hodjlyl.jpg").open
bike4 = Bike.new(brand: "Yamaha", model: "MT-09", year: 2024, location: "Tokyo", description: "Quintessential motorcycle", price_per_day: 14000, user: user1)
bike4.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike4.save
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989292/kuki-bikes/hi1p4xhuphpakaeukgdf.jpg").open
bike5 = Bike.new(brand: "Suzuki", model: "GSF1200S", year: 1996, location: "Tokyo", description: "See where the Suzuki Bandit line started", price_per_day: 5000, user: user2)
bike5.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike5.save
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989297/kuki-bikes/ovydzucj8nncgqjpic5n.jpg").open
bike6 = Bike.new(brand: "Honda", model: "CT125", year: 2022, location: "Tokyo", description: "Best commuter", price_per_day: 3000, user: user3)
bike6.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike6.save
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989302/kuki-bikes/ijrdmbmxxem7p73lcwsw.jpg").open
bike7 = Bike.new(brand: "Yamaha", model: "MT-07", year: 2015, location: "Wroclaw", description: "Best beginner bike", price_per_day: 7000, user: user1)
bike7.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike7.save
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1731989303/kuki-bikes/gzthi7xadabw7u7ltho4.jpg").open
bike8 = Bike.new(brand: "Honda", model: "Hornet", year: 2024, location: "Poznan", description: "Baseline naked bike from Honda", price_per_day: 9000, user: user2)
bike8.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike8.save
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
file = URI.parse("https://res.cloudinary.com/dzmlzpvcj/image/upload/v1732257045/kuki-bikes/ywbplmjw2joz9opmcol9.png").open
bike9 = Bike.new(brand: "Honda", model: "Rebel", year: 2024, location: "Poznan", description: "Ease your way into the cruiser riding, with automatic gearbox", price_per_day: 11000, user: user3)
bike9.photo.attach(io: file, filename: "triumph.png", content_type: "image/png")
bike9.save

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

puts "creating bikes..."
booking = Booking.new(start_date: Date.today, end_date: Date.today + 2, bike: bike2, user: user1, total_price: 12000, status: 0)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 5, bike: bike3, user: user2, total_price: 30000, status: 0)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 11, bike: bike1, user: user3, total_price: 9999, status: 0)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 2, bike: bike4, user: user1, total_price: 12000, status: 1)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 5, bike: bike5, user: user2, total_price: 30000, status: 1)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 11235871, bike: bike6, user: user3, total_price: 999999, status: 1)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 2, bike: bike7, user: user1, total_price: 12000, status: 2)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 5, bike: bike8, user: user2, total_price: 30000, status: 2)
booking.save

booking = Booking.new(start_date: Date.today, end_date: Date.today + 11235871, bike: bike9, user: user3, total_price: 999999, status: 2)
booking.save
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
