class CreateSdistricts < ActiveRecord::Migration
  def self.up
    create_table :sdistricts do |t|
      t.string :name
      t.references :district
      t.timestamps
    end
  end

  def self.down
    drop_table :sdistricts
  end
end
