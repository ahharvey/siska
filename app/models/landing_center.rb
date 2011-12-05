class LandingCenter < ActiveRecord::Base
  attr_accessible :name, :sdistrict
  has_many :slfours
  has_many :slfives
  scope :default, :order => 'landing_centers.name ASC'
end
