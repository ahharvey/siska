class CreateElfours < ActiveRecord::Migration
  def self.up
    create_table :elfours do |t|
      t.references :district
      t.integer :year
      t.integer :quarter
      t.references :fish
      t.integer :value
      t.timestamps
    end
  end

  def self.down
    drop_table :elfours
  end
end
