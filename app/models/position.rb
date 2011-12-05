class Position < ActiveRecord::Base
  attr_accessible :name
  
  scope :default, :order => 'positions.name ASC'
  
  has_many :users
  
end
