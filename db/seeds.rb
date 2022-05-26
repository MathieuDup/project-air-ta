# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Creating users"

User.destroy_all
Teacher.destroy_all

User.create(username: "Marceau", email: "marceau@lewagon.com", password: "secret")
User.create(username: "Emy", email: "emy@gmail.com", password: "secret")

p "Creating teachers"

Teacher.create(name: "Kalid", location: "Bordeaux", price: "1000", user_id: "1")
Teacher.create(name: "Jérome", location: "Bordeaux", price: "100", user_id: "1")
Teacher.create(name: "Florian", location: "Bordeaux", price: "100", user_id: "1")
Teacher.create(name: "Mathieu", location: "Bordeaux", price: "5", user_id: "1")
Teacher.create(name: "Patricia", location: "Bordeaux", price: "200", user_id: "1")

Language.create(name: "CSS")
Language.create(name: "HTML")
Language.create(name: "JS")
Language.create(name: "Rails")
Language.create(name: "Ruby")
Language.create(name: "React")
Language.create(name: "React Native")
Language.create(name: "Vue.JS")
Language.create(name: "Python")
Language.create(name: "SQL")
Language.create(name: "C")
Language.create(name: "C++")
Language.create(name: "C#")
Language.create(name: "Java")
Language.create(name: "Swift")
Language.create(name: "PHP")
Language.create(name: "Go")
Language.create(name: "Kotlin")
Language.create(name: "Objective-C")
Language.create(name: "CoffeeScript")
Language.create(name: "TypeScript")
Language.create(name: "Rust")

TeachersLanguage.create(teacher_id: "1", language_id: "1")
TeachersLanguage.create(teacher_id: "1", language_id: "2")
TeachersLanguage.create(teacher_id: "1", language_id: "3")
TeachersLanguage.create(teacher_id: "2", language_id: "4")
TeachersLanguage.create(teacher_id: "2", language_id: "5")
TeachersLanguage.create(teacher_id: "2", language_id: "6")
TeachersLanguage.create(teacher_id: "3", language_id: "7")
TeachersLanguage.create(teacher_id: "3", language_id: "8")
TeachersLanguage.create(teacher_id: "3", language_id: "9")
TeachersLanguage.create(teacher_id: "4", language_id: "10")
TeachersLanguage.create(teacher_id: "4", language_id: "11")
TeachersLanguage.create(teacher_id: "4", language_id: "12")
TeachersLanguage.create(teacher_id: "5", language_id: "13")
TeachersLanguage.create(teacher_id: "5", language_id: "14")
TeachersLanguage.create(teacher_id: "5", language_id: "15")

p "Finished !"
