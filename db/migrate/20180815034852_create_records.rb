class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state, limit: 2, null: false
      t.string :zip, null: false
      t.string :purpose
      t.string :property_owner
      t.date :creation_date, null: false
      t.numeric :lat, null: false
      t.numeric :long, null: false
      t.integer :import_id

      t.timestamps
    end

    add_foreign_key :records, :imports, name: :records_import_id_fkey
    add_foreign_key :records, :states, column: :state, primary_key: :short_name, name: :records_statecode_fkey
  end
end
