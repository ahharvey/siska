class CreateGearCategories < ActiveRecord::Migration
  def self.up
    create_table :gear_categories do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :gear_categories
  end
end
