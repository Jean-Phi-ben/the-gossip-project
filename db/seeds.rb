# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '***** Je nettoie les DB'
City.destroy_all
User.destroy_all
Gossip.destroy_all

# seed pour les city
puts '-> Je charge un jeu d\'essai city'
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Base.regexify(/[0-8][0-9][0-9]{3}/)
  )
end
puts 'Jeu d\'essai City avec 10 items'

# seed user
puts '-> Je charge un jeu d\'essai User'
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 7,to: 77),
    city_id: City.all.sample.id
  )
end
puts 'Jeu d\'essai User avec 10 items'

# seed gossip
puts '-> Je charge un jeu d\'essai Gossip'
20.times do
  Gossip.create!(
    title: Faker::Lorem.sentence(word_count = 4, supplemental = false, random_words_to_add = 6),
    content: Faker::Lorem.paragraph(3),
    user_id: User.all.sample.id
  )
end
puts 'Jeu d\'essai Gossip avec 10 items'
