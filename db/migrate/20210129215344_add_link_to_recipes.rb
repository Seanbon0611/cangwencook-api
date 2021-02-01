class AddLinkToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :link, :string
  end
end
