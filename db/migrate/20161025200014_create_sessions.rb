class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.integer :story_id
      t.integer :session_number
      t.text :notes

      t.timestamps
    end
  end
end
