class Slfive < ActiveRecord::Base
  attr_accessible :landing_center, :date, :gear, :serialno, :sampled, :wt_dealer, :wt_consumed, :wt_crew, :wt_others
end
