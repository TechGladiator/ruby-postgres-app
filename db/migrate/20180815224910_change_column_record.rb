class ChangeColumnRecord < ActiveRecord::Migration[5.2]
  def up
    change_column :records, :zip, :string, :limit => 5, null: false
  end

  def down
    change_column :records, :zip, :string, null: false
  end
end
