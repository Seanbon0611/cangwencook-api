class AddProteinToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :protein, :integer
  end
end
