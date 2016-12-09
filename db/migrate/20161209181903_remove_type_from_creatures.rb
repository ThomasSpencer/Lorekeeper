class RemoveTypeFromCreatures < ActiveRecord::Migration[5.0]
  def change
    remove_column :creatures, :type, :string
  end
end
