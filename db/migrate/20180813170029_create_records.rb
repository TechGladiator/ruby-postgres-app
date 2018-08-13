class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :name
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :purpose
      t.string :property_owner
      t.date :creation_date

      t.timestamps
    end
  end
end
