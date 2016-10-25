class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.integer :continent_id
      t.string :name
      t.integer :population
      t.text :description

      t.timestamps
    end
  end
end
