class AddLongToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :Long, :numeric
  end
end
