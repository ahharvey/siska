class CreateWaters < ActiveRecord::Migration
  def self.up
    create_table :waters do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :waters
  end
end
