class GearCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :gears
  scope :default, :order => 'gear_categories.name ASC'
end
