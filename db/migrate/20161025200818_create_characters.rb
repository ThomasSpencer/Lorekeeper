class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.integer :city_id
      t.string :name
      t.string :profession
      t.text :backstory

      t.timestamps
    end
  end
end
