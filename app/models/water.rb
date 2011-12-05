class Water < ActiveRecord::Base
  attr_accessible :name
  has_many :fish
  scope :default, :order => 'waters.name ASC'
end
