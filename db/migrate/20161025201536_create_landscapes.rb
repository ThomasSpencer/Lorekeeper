class CreateLandscapes < ActiveRecord::Migration[5.0]
  def change
    create_table :landscapes do |t|
      t.integer :continent_id
      t.string :name
      t.string :terrain
      t.text :description

      t.timestamps
    end
  end
end
