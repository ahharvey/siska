class UserRole < ActiveRecord::Base
  attr_accessible :user, :role
  belongs_to :user
  belongs_to :role
end
