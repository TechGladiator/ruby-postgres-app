class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state, limit: 2, null: false
      t.string :zip, null: false
      t.string :purpose, null: false
      t.string :property_owner, null: false
      t.date :creation_date, null: false
      t.numeric :lat, null: false
      t.numeric :long, null: false
      t.references :import, foreign_key: true

      t.timestamps
    end
  end
end
