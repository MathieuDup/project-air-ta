# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Creating users"

User.create(username: "Jonathan84", email: "joz84@lewagon.com", password: "secret")
User.create(username: "Patricia-MacLellan", email: "patricia@gmail.com", password: "secret")

p "Creating teachers"

Teacher.create(name: "Mélanie", location: "Bordeaux", language: "Rails, Ruby", price: "1000", user_id: "1")
Teacher.create(name: "Paul", location: "Bordeaux", language: "Rails, Ruby, CSS", price: "100", user_id: "1")

p "Finished !"
