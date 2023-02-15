# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "destroy users and clowns"

Clown.destroy_all
User.destroy_all

puts "creates two users"

user1 = User.create(email: "user1@gmail.com", password: "123456")
user2 = User.create(email: "user2@gmail.com", password: "123456")

puts "create 5 clowns"

5.times do
  clown = Clown.create(name: Faker::FunnyName.name, user_id: user1.id)
  puts "#{clown.name}"
end
