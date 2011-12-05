class CreateBoatSizes < ActiveRecord::Migration
  def self.up
    create_table :boat_sizes do |t|
      t.string :size
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :boat_sizes
  end
end
