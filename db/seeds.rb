# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MainCourse.create(name: "Pizza", notes: "Extra Cheesey")
Snack.create(name: "Nachos", notes: "Extra Cheesey")
Drink.create(name: "Soda Pop", notes: "No Coke, Pepsi")
Party.create(title: "Pizza Party")
Plan.create(party_id: 1, main_course_id: 1, snack_id: 1, drink_id: 1)