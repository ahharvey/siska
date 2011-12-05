class CreateSlfives < ActiveRecord::Migration
  def self.up
    create_table :slfives do |t|
      t.references :landing_center
      t.date :date
      t.references :gear
      t.string :serialno
      t.boolean :sampled
      t.integer :wt_dealer
      t.integer :wt_consumed
      t.integer :wt_crew
      t.integer :wt_others
      t.timestamps
    end
  end

  def self.down
    drop_table :slfives
  end
end
