# == BACKLOG ==
# Recipe instances
# Recipe should know its name and its ingredients
# Rename #get_ingredients to #ingredients
# Rename #get_shopping_list to #display_shopping_list
# How are we going to handle multiple recipes
# Put the recipes in the database
# Array constant for recipes

class ShoppingList
  attr_reader :recipe_name

  def initialize(recipe_name)
    @recipe_name = recipe_name
  end

  def get_shopping_list
    puts "Here's the recipe for breakfast: #{recipe_name}"
    print "Here's your shopping list: "
    puts Recipe.get_ingredients.join(", ")
  end
end

class Recipe
  def self.get_ingredients
    ["12 eggs", "ground coffee"]
  end
end

shopping_list = ShoppingList.new("scrambled eggs")
shopping_list.get_shopping_list
