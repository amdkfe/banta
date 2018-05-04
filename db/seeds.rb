# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "ahmad", password: "aaaaaa", email: 'a@a.com')
User.create!(username: "sara",   password: "ssssss", email: 's@s.com')

Room.create!(name: "Arsenal")
Room.create!(name: "Juventus")
Room.create!(name: "Barcelona")
Room.create!(name: "Chelsea")
Room.create!(name: "Manchester United")
Room.create!(name: "Tottenham")
Room.create!(name: "Liverpool")
Room.create!(name: "Real Madrid")
Room.create!(name: "Manchester City")
Room.create!(name: "Ac Milan")
