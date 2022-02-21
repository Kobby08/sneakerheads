sneakers = [
  { name: 'Air Jordan', model: 'Black Hero', price: 50 },
  { name: 'Air Force', model: 'Neat Bridge', price: 150 },
  { name: 'Yezzy', model: 'Kayne Edition', price: 150 },
  { name: 'Adidas EQT', model: 'Retro Black', price: 350 },
  { name: 'Adidas EQT', model: 'Retro Red', price: 250 },
]

user =
  User.create!(
    first_name: 'John',
    last_name: 'Doe',
    username: 'jdoe',
    email: 'testuser@test.com',
    password: 'tr#sted',
    password_confirmation: 'tr#sted',
  )

sneakers.each do |sneaker|
  Sneaker.create!(
    sneaker.merge(user_id: user.id, image: 'https://place-hold.it/300x300'),
  )
end
puts 'Sneakers created.........'
