class CreatePlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :planes do |t|
      t.integer :story_id
      t.string :name
      t.string :colour

      t.timestamps
    end
  end
end
