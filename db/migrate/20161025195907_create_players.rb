class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :story_id
      t.string :character_name
      t.string :player_name
      t.text :backstory
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :widsom
      t.integer :charisma
      t.integer :expereince
      t.string :alignment

      t.timestamps
    end
  end
end
