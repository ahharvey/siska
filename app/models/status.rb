class Status < ActiveRecord::Base
  attr_accessible :name
  has_many :fish
  scope :default, :order => 'statuses.name ASC'
end
