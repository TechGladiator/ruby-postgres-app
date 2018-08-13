class AddLatToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :Lat, :numeric
  end
end
