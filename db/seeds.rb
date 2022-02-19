sneakers = [
  { name: 'Air Jordan', model: 'Black Hero', price: 50 },
  { name: 'Air Force', model: 'Neat Bridge', price: 150 },
  { name: 'Yezzy', model: 'Kayne Edition', price: 150 },
  { name: 'Adidas EQT', model: 'Retro Black', price: 350 },
  { name: 'Adidas EQT', model: 'Retro Red', price: 250 },
]

sneakers.each { |sneaker| Sneaker.create!(sneaker) }
puts 'Sneakers created.........'
