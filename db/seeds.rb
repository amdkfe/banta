# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "ahmad", password: "aaaaaa", email: 'ab@a.com')
User.create!(username: "sara",   password: "ssssss", email: 'ss@s.com')

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


Message.create!(content: "hello world 1", room_id: "1", user_id: "1")
Message.create!(content: "hello world 2", room_id: "2", user_id: "2")
Message.create!(content: "hello world 3", room_id: "3", user_id: "3")
Message.create!(content: "hello world 4", room_id: "4", user_id: "4")