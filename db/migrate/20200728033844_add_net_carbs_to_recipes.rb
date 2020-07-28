class AddNetCarbsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :net_carbs, :integer
  end
end
