class AddIndexForImportCells < ActiveRecord::Migration
  def up
    add_index :import_cells, [:import_table_id]
  end

  def down
    remove_index :import_cells, :column => [:import_table_id]
  end
end
