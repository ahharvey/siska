class CreateSlsixes < ActiveRecord::Migration
  def self.up
    create_table :slsixes do |t|
      t.references :village
      t.integer :year
      t.integer :quarter
      t.references :gear
      t.references :boat_size
      t.integer :units
      t.string :month
      t.integer :trips
      t.timestamps
    end
  end

  def self.down
    drop_table :slsixes
  end
end
