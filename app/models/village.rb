class Village < ActiveRecord::Base
  attr_accessible :name, :sdistrict
  has_many :slsixes
  scope :default, :order => 'villages.name ASC'
end
