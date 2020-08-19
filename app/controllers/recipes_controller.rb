class RecipesController < ApplicationController
  def index 
    recipes = Recipe.all
    render json: {recipes: RecipeSerializer.new(recipes)}, status: 200
  end

  def new
    recipe = Recipe.new(recipe_params)
    step_statuses = []
    # ingredient_statuses = []
    params[:instructions].each do |step_params|
      byebug
      step = Instruction.new(recipe_id: recipe.id, step: step_params)
      if step.save
        step_statuses << step
      else
        :error
      end
    end
    # params[:ingredients].each do |ingredient_params|
    #   ingredient = Ingredient.new(recipe_id: recipe.id, name: ingredient_params[:name], measurement: ingredient_params[:measurement])
    #   ingredient_statuses << (ingredient.save ? {msg: "Success"} : {error: "not saved"})
    # end
    if recipe.save
      render json: {msg: "Recipe Added", recipe: recipe.title}, status: 201
    else
      render json: {error: "Recipe not saved "}, status: 400
    end
  end


  private

  def recipe_params
    params.permit(:title, :video_id, :description, :image, :keto, :gluten_free, :low_calorie, :paleo, :dairy_free, :vegetarian, :quick, :calories, :net_carbs, :fat, :protein, :servings, {instructions: [:recipe_id, :step]})
  end

end
