class ChangeWidsom < ActiveRecord::Migration[5.0]
  def change
    rename_column :players, :widsom, :wisdom
    rename_column :players, :expereince, :experience
  end
end
