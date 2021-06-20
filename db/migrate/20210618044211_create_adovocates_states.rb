class CreateAdovocatesStates < ActiveRecord::Migration[6.0]
  def change
    create_table :adovocates_states do |t|
      t.integer :advocate_id
      t.integer :state_id

      t.timestamps
    end
  end
end
