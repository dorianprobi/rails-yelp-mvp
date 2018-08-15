# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Restaurant.create([{name: 'Luigis', address: 'italian street', phone_number: '9876537842', category: 'italian'},
                    {name: 'xing', address: 'chinese street', phone_number: '85485487542', category: 'chinese'}])

10.times do
  Restaurant.create(
    name: Faker::StarWars.specie,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end
