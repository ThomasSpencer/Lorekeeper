class AddDescriptionToPlanes < ActiveRecord::Migration[5.0]
  def change
    add_column :planes, :description, :text
  end
end
