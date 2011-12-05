class Sdistrict < ActiveRecord::Base
  attr_accessible :name, :district
  
  scope :default, :order => 'sdistricts.name ASC'
  
  belongs_to :district
  has_many :offices
end
