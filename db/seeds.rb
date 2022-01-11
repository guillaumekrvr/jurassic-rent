# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

User.destroy_all
Animal.destroy_all

user = User.new(
  email: "toto@hotmail.fr",
  password: "toto10000"
)
user.save!

puts "User saved"



10.times do
  animal = Animal.new(
    name: Faker::Name.first_name,
    age: Faker::Number.between(from: 1, to: 100),
    specie: Faker::Creature::Animal.name,
    diary: Faker::Food.ethnic_category,
    description: Faker::Food.description,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    price_per_day: Faker::Number.positive,
    size: Faker::Number.between(from: 1, to: 100),
    user: user
  )
  animal.save!
  puts "Animal saved"

  # booking = Booking.new(
  #  status: "validate",
 # start_date: Faker::Date.forward(days: 23),
 # end_date: Faker::Date.forward(days: 35),
 # price_booking: Faker::Number.within(range: 1..3),
 # animal: animal,
  # user: user
  # )
  # booking.save!
  # puts "Booking saved"

end
