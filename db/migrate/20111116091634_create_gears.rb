class CreateGears < ActiveRecord::Migration
  def self.up
    create_table :gears do |t|
      t.string :name
      t.references :gear_category
      t.timestamps
    end
  end

  def self.down
    drop_table :gears
  end
end
