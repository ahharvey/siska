class CreateLandingCenters < ActiveRecord::Migration
  def self.up
    create_table :landing_centers do |t|
      t.string :name
      t.references :sdistrict
      t.timestamps
    end
  end

  def self.down
    drop_table :landing_centers
  end
end
