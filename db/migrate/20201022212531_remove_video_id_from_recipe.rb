class RemoveVideoIdFromRecipe < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :video_id
  end
end
