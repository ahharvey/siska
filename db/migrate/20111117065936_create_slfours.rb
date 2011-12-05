class CreateSlfours < ActiveRecord::Migration
  def self.up
    create_table :slfours do |t|
      t.date :date
      t.references :LandingCenter
      t.references :Gear
      t.integer :interval
      t.string :SerialNo
      t.string :BoatName
      t.references :BoatSize
      t.boolean :sampled
      t.timestamps
    end
  end

  def self.down
    drop_table :slfours
  end
end
