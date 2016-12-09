class AddOriginToCreatures < ActiveRecord::Migration[5.0]
  def change
    add_column :creatures, :origin, :text
  end
end
