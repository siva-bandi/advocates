class RemoveStatusFromCases < ActiveRecord::Migration[6.0]
  def change
    remove_column :cases, :status, :boolean
  end
end
