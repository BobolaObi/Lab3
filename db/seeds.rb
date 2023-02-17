# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

24.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    province: Faker::Address.state,
    postal_code: Faker::Address.zip_code,
    country: Faker::Address.country
  )

  24.times do
    Micropost.create!(
      message: Faker::Lorem.sentence,
      user_id: user.id
    )
  end
end