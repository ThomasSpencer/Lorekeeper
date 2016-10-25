class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :total_players
      t.string :ruleset
      t.integer :total_sessions

      t.timestamps
    end
  end
end
