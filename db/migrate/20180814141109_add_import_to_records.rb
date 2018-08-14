class AddImportToRecords < ActiveRecord::Migration[5.2]
  def change
    add_reference :records, :import, foreign_key: true
  end
end
