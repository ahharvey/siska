class Fish < ActiveRecord::Base
  attr_accessible :code, :nat_nm, :loc_nm, :family, :eng_nm, :lat_nm, :sector_id, :water_id, :category_id, :status_id
  belongs_to :category
  belongs_to :status
  belongs_to :sector
  belongs_to :water
  has_many :elfours
  scope :default, :order => 'fish.nat_nm ASC'
end
