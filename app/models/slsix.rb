class Slsix < ActiveRecord::Base
  attr_accessible :village, :year, :quarter, :gear, :boat_size, :units, :month, :trips
  belongs_to :boat_size
  belongs_to :village
  
  validates_numericality_of :quarter, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :quarter, :in => 1..4, :message => "can only be between 0 and 4."
  
  validates_numericality_of :year, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :year, :in => 1970..2099, :message => "can only be between 1970 and 2099."
  
  validates_numericality_of :trips, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :trips, :in => 0..99, :message => "can only be between 0 and 99."
  
  validates_numericality_of :units, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :units, :in => 0..99, :message => "can only be between 0 and 99."
end
