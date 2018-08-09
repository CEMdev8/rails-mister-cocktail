# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


Cocktail.create(name: "Mint Julep")
Cocktail.create(name:"Whiskey Sour")
Cocktail.create(name:"Mojito")

Dose.create(description:"the Mojito cocktail needs 6cl of lemon")
Dose.create(description:"the Mint Julep cocktail needs 8 mint leaves")
Dose.create(description:"the Whiskey Sour cocktail needs 2g of ice")
