# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "mint")
Ingredient.create(name: "cola")
Ingredient.create(name: "milk")
Ingredient.create(name: "honey")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "orange")
Ingredient.create(name: "ice")
tomato = Ingredient.create(name: "tomato")

Bloody_mary = Cocktail.create(name:"Bloody_mary")
Dose.create(description: "Mix the ingredients and just drink.", cocktail:  Bloody_mary , ingredient: tomato )