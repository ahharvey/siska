class Gear < ActiveRecord::Base
  attr_accessible :name, :gear_category_id
  belongs_to :gear_category
  has_many :slfours
  has_many :slfives
  scope :default, :order => 'gears.name ASC'
end
