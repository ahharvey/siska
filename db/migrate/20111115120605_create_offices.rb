class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :address3
      t.references :sdistrict
      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
