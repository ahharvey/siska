class Sector < ActiveRecord::Base
  attr_accessible :name
  has_many :fish
  scope :default, :order => 'sectors.name ASC'
end
