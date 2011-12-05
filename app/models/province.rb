class Province < ActiveRecord::Base
  attr_accessible :name
  scope :default, :order => 'provinces.name ASC'
  
  has_many :districts
end
