class Elfour < ActiveRecord::Base
  belongs_to :district
  belongs_to :fish
  attr_accessible :district, :year, :quarter, :fish, :value
  
  validates_numericality_of :quarter, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :quarter, :in => 1..4, :message => "can only be between 0 and 4."
  
  validates_numericality_of :year, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :year, :in => 1970..2099, :message => "can only be between 1970 and 2099."
  
  validates_numericality_of :value, :only_integer => true, :message => "can only be whole number."
  validates_inclusion_of :value, :in => 1000..999999, :message => "can only be between 1,000 and 999,999 Rp per kg."
end
