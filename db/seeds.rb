# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require "rest-client"
require 'json'


url = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
seed_result = JSON.parse(url)

seed_result["drinks"].each do |ingredient|
  new_ingredient = Ingredient.new(
    name: ingredient["strIngredient1"]
    )
  new_ingredient.save!
end
