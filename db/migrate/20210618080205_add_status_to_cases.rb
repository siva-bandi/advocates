class AddStatusToCases < ActiveRecord::Migration[6.0]
  def change
    add_column :cases, :status, :string
  end
end
