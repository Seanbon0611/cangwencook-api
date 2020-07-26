class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :video_id
      t.string :description
      t.string :image
      t.boolean :keto
      t.boolean :gluten_free
      t.boolean :low_calorie
      t.boolean :paleo
      t.boolean :dairy_free
      t.boolean :vegetarian
      t.boolean :quick

      t.timestamps
    end
  end
end
