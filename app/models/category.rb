class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :fish
  scope :default, :order => 'categories.name ASC'
end
