require 'faker'

10.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

30.times do
  pin = Pin.create(image: Faker::Internet.url('example.com', '/foobar.html'), user_id: rand(1..10))
end
#Ici on utilise un url comme exemple de pin
50.times do
  comment = Comment.create(body: Faker::Lorem.sentence, user_id: rand(1..10), pin_id: rand(1..30))
end
