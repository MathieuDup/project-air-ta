# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Creating users"

User.create(username: "Marceau", email: "marceau@lewagon.com", password: "secret")
User.create(username: "Patricia-MacLellan", email: "patricia@gmail.com", password: "secret")

p "Creating teachers"

Teacher.create(name: "Kalid", location: "Bordeaux", language: "CSS, HTML, JS", price: "1000", user_id: "1")
Teacher.create(name: "Jérome", location: "Bordeaux", language: "Rails, Ruby, JS", price: "100", user_id: "1")
Teacher.create(name: "Florian", location: "Bordeaux", language: "Rails, CSS, JS", price: "100", user_id: "1")
Teacher.create(name: "Mathieu", location: "Bordeaux", language: "React, React Native, Vue.JS", price: "5", user_id: "1")

p "Finished !"
