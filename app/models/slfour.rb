class Slfour < ActiveRecord::Base
  attr_accessible :date, :LandingCenter, :Gear, :interval, :SerialNo, :BoatName, :BoatSize, :sampled
  belongs_to :LandingCenter
  belongs_to :Gear
  belongs_to :BoatSize
  
  validates_numericality_of :interval, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :interval, :in => 0..99, :message => "can only be between 0 and 99."
end
