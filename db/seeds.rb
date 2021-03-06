# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# mojito = Cocktail.create(name: "Mojito")
# rum = Ingredient.create(name: "Dark rum")
# Dose.create(cocktail_id: mojito.id, Quantity: 2, description: "2 Shots", ingredient_id: rum.id)


#Now lets' automate
require 'open-uri'

url ="https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=Gin"
data = JSON.parse(open(url).read)
data["drinks"].each do |hash|
  Cocktail.create(name: hash["strDrink"], img_url: hash["strDrinkThumb"])
end
