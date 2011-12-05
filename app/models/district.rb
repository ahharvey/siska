class District < ActiveRecord::Base
  attr_accessible :name, :province_id
  scope :default, :order => 'districts.name ASC'
  
  belongs_to :province
  has_many :sdistricts
  has_many :elfours
end
