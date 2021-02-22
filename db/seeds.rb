# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Page.destroy_all

10.times do
  Page.create(
    body: Faker::Hacker.say_something_smart,
    title: Faker::Hacker.abbreviation,
    author: Faker::Name.name,
  )
end

puts "Seeded you have #{Page.all.size} pages"

