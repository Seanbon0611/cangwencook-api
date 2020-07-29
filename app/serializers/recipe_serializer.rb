class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :video_id, :image, :keto, :gluten_free, :dairy_free, :low_calorie, :vegetarian, :paleo, :quick, :calories, :fat, :protein, :instructions, :ingredients
end
