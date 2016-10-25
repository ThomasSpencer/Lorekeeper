class CreateContinents < ActiveRecord::Migration[5.0]
  def change
    create_table :continents do |t|
      t.integer :plane_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
