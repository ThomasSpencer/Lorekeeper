class AddDescriptionToCreatures < ActiveRecord::Migration[5.0]
  def change
    add_column :creatures, :description, :text
  end
end
