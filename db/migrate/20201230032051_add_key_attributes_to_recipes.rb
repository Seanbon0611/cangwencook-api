class AddKeyAttributesToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :seafood, :boolean
    add_column :recipes, :instantpot, :boolean
    add_column :recipes, :airfryer, :boolean
    add_column :recipes, :freezermeal, :boolean
  end
end
