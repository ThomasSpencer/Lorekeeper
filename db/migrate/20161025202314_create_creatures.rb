class CreateCreatures < ActiveRecord::Migration[5.0]
  def change
    create_table :creatures do |t|
      t.integer :landscape_id
      t.string :name
      t.string :type
      t.string :size
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.text :abilities

      t.timestamps
    end
  end
end
