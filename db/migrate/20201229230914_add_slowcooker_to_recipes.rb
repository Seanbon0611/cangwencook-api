class AddSlowcookerToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :slowcooker, :boolean
  end
end
