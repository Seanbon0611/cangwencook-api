class RecipesController < ApplicationController
  def index 
    recipes = Recipe.all
    render json: {recipes: RecipeSerializer.new(recipes)}, status: 200
  end

  def create
    recipe = Recipe.new(
      title: params[:title],
      description: params[:description],
      image: params[:image],
      keto: params[:keto],
      gluten_free: params[:gluten_free],
      low_calorie: params[:low_calorie],
      paleo: params[:paleo],
      dairy_free: params[:dairy_free],
      quick: params[:quick],
      calories: params[:calories],
      net_carbs: params[:net_carbs],
      fat: params[:fat],
      protein: params[:protein]
    )
    if recipe.save
      instructions = []
      ingredients = []
      recipe_params[:ingredients].each do |ingredient_param|
        ingredient = Ingredient.create(recipe_id: recipe.id, name:ingredient_param[:name], measurement: ingredient_param[:measurement])
        ingredients << ingredient
      end
      recipe_params[:instructions].each do |instruction_param|
        step = Instruction.create(recipe_id: recipe.id, step: instruction_param[:step])
        instructions << step
      end
      render json: {msg: "success"}, status: 200
    else
      render json: {error: "There was an error"}, status: 500
    end
  end

  def delete_recipe
    recipe = Recipe.find(params[:id])
    # instructions = Instruction.where(:recipe_id => recipe.id)
    # ingredients = Ingredient.where(:recipe_id => recipe.id)
    # instructions.each do |inst|
    #   inst.destroy
    # end
    # ingredients.each do |ingr|
    #   ingr.destroy
    # end
    recipe.destroy

    if recipe.destroyed?
      render json: {msg: "Recipe deleted"}, status: 200
    else
      render json: {error: "there was an error"}
    end
  end

  private
  def recipe_params
    params.permit(:title, :description, :image, :keto, :gluten_free, :low_calorie, :paleo, :dairy_free, :vegetarian, :quick, :calories, :net_carbs, :fat, :protein, :servings, {ingredients: ["name", "measurement"]}, {instructions: ["step"]})
  end
end
