class RecipesController < ApplicationController
  def index 
    recipes = Recipe.all
    render json: {recipes: RecipeSerializer.new(recipes)}, status: 200
  end
end
