class AddServingsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :servings, :string
  end
end
