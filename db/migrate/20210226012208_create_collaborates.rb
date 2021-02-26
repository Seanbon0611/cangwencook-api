class CreateCollaborates < ActiveRecord::Migration[6.1]
  def change
    create_table :collaborates do |t|
      t.string :name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
