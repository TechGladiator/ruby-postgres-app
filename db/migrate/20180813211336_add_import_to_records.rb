class AddImportToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :import_id, :integer
    add_index :records, :import_id
  end
end
