require 'test_helper'

class UserRoleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserRole.new.valid?
  end
end
