class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.integer :advocate_id
      t.integer :state_id
      t.string :client_name
      t.boolean :status
      t.string :date

      t.timestamps
    end
  end
end
