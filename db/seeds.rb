# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Clown.destroy_all
User.destroy_all

puts "creates two users"

user1 = User.create(email: "user1@gmail.com", password: "123456")
user2 = User.create(email: "user2@gmail.com", password: "123456")

puts "create 20 clowns"

20.times do
  clown = Clown.new(name: Faker::FunnyName.name, description: Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false), user_id: user1.id)
  file = URI.open('https://thispersondoesnotexist.com/image')
  clown.photo.attach(io: file, filename: "user.png", content_type: "image/png")

  clown.save
  puts "#{clown.image} #{clown.name} #{clown.description}"
end
