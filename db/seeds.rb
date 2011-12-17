# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recipe.delete_all

Ingredient.delete_all

Item.delete_all

#generate new recipes

recipe = Recipe.create(name:"Scrambled Eggs")
item = Item.create(name:"egg", unit:"egg")
recipe.ingredients.create(quantity:3.0, item_id:item.id)
item = Item.create(name:"salt", unit:"tsp")
recipe.ingredients.create(quantity:0.1, item_id:item.id)
item = Item.create(name:"pepper", unit:"tsp")
recipe.ingredients.create(quantity:0.05, item_id:item.id)


recipe = Recipe.create(name:"Dal")
item = Item.create(name:"toor dal", unit:"cup")
recipe.ingredients.create(quantity:1.0, item_id:item.id)
item = Item.create(name:"water", unit:"cup")
recipe.ingredients.create(quantity:2.0, item_id:item.id)
item = Item.find_by_name("salt")
recipe.ingredients.create(quantity:1, item_id:item.id)