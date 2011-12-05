class BoatSize < ActiveRecord::Base
  #has_many :
  attr_accessible :size, :description
  has_many :slfours
  has_many :slsixes
  scope :default, :order => 'boat_sizes.size ASC'
end
