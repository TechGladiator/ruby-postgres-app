class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states, id: false do |t|
      t.string :name, null: false
      t.string :short_name, primary_key: true, limit: 2, null: false

      t.timestamps
    end
  end
end
