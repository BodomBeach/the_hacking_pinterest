# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

30.times do
  pin = Pin.create(image: Faker::Internet.url('example.com', '/foobar.html'), user_id: rand(1..10))
end

50.times do
  comment = Comment.create(body: Faker::Lorem.sentence, user_id: rand(1..10), pin_id: rand(1..30))
end
