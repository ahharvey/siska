class CreateFish < ActiveRecord::Migration
  def self.up
    create_table :fish do |t|
      t.string :code
      t.string :nat_nm
      t.string :loc_nm
      t.string :family
      t.string :eng_nm
      t.string :lat_nm
      t.references :sector
      t.references :water
      t.references :category
      t.references :status
      t.timestamps
    end
  end

  def self.down
    drop_table :fish
  end
end
