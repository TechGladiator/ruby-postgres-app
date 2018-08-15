class CreateImports < ActiveRecord::Migration[5.2]
  def change
    create_table :imports do |t|
      t.string :import_name, null: false
      t.index ["import_name"], name: "imports_import_name_key", unique: true

      t.timestamps
    end
  end
end
