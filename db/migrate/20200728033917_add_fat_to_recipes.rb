class AddFatToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :fat, :integer
  end
end
