class CreateSlfiveFishes < ActiveRecord::Migration
  def self.up
    create_table :slfive_fishes do |t|
      t.references :Slfive
      t.references :fish
      t.integer :weight
      t.timestamps
    end
  end

  def self.down
    drop_table :slfive_fishes
  end
end
