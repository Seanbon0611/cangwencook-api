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
      blob = ActiveStorage::Blob.find_by(key: [params[:image]])
      if blob 
        recipe.image.attach(blob)
      end
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
  
  def update
    recipe = Recipe.find(params[:id])
    instructions = recipe.instructions.all
    ingredients = recipe.ingredients.all
    recipe.update(
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
    params[:ingredients].each do |ingredient|
      matched_ingredient = Ingredient.find(ingredient[:id])
      matched_ingredient.update(name: ingredient[:name], measurement: ingredient[:measurement])
    end

    params[:instructions].each do |instruction|
      if !instruction[:id]
        Instruction.create(recipe_id: recipe.id, step: instruction[:step])
      else
        matched_instruction = Instruction.find(instruction[:id])
        matched_instruction.update(step: instruction[:step])
      end
    end
    if recipe.save
      render json: recipe_json(recipe), status: 200
    else
      render json: { error: 'There were an error' }
    end
  end

  def delete_recipe
    recipe = Recipe.find(params[:id])
    recipe.destroy

    if recipe.destroyed?
      render json: {msg: "Recipe deleted"}, status: 200
    else
      render json: {error: "there was an error"}
    end
  end

  def recipe_json(recipe)
    {
      id: recipe.id,
      title: recipe.title,
      description: recipe.description,
      image: recipe.image,
      keto: recipe.keto,
      gluten_free: recipe.gluten_free,
      low_calorie: recipe.low_calorie,
      paleo: recipe.paleo,
      dairy_free: recipe.dairy_free,
      quick: recipe.quick,
      calories: recipe.calories,
      net_carbs: recipe.net_carbs,
      fat: recipe.fat,
      protein: recipe.protein,
      ingredients: recipe.ingredients.map do |ingredient|
        {
          id: ingredient.id,
          recipe_id: ingredient.recipe_id,
          name: ingredient.name,
          measurement: ingredient.measurement
        }
      end,
      instructions: recipe.instructions.map do |instruction|
        {
          id: instruction.id,
          recipe_id: instruction.recipe_id,
          step: instruction.step
        }
      end
    }
  end

  private
  def recipe_params
    params.permit(:id, :title, :description, :image, :keto, :gluten_free, :low_calorie, :paleo, :dairy_free, :vegetarian, :quick, :calories, :net_carbs, :fat, :protein, :servings, {ingredients: ["id", "name", "measurement"]}, {instructions: ["id", "step"]})
  end
end
