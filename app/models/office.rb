class Office < ActiveRecord::Base
  attr_accessible :name, :address1, :address2, :address3, :sdistrict
  
  scope :default, :order => 'offices.name ASC'
  
  belongs_to :sdistrict
  has_many :users
end
