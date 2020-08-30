# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Party.create(title: "Pizza Party")
Party.create(title: "Halloween Costume Party")

Category.create(name: "Main Courses")
Category.create(name: "Snacks")
Category.create(name: "Non-Alcoholic Drinks")
Category.create(name: "Alcoholic Drinks")
Category.create(name: "Music")
Category.create(name: "Movies & TV")
Category.create(name: "Games")
Category.create(name: "Costumes")
Category.create(name: "Decorations")

Item.create(name: "Pizza", category_id: 1)
Item.create(name: "Nachos", category_id: 2)
Item.create(name: "Soda Pop", category_id: 3)
Item.create(name: "Beer", category_id: 4)
Item.create(name: "Hip Hop Playlist", category_id: 5)
Item.create(name: "Teenage Mutant Ninja Turtles", category_id: 6)
Item.create(name: "Game of Thrones", category_id: 7)
Item.create(name: "Toga", category_id: 8)
Item.create(name: "Halloween Decorations", category_id: 9)

PartyPlan.create(party_id: 1, item_id: 1)
PartyPlan.create(party_id: 1, item_id: 3)
PartyPlan.create(party_id: 1, item_id: 6)
PartyPlan.create(party_id: 2, item_id: 1)
PartyPlan.create(party_id: 2, item_id: 4)
PartyPlan.create(party_id: 2, item_id: 9)
