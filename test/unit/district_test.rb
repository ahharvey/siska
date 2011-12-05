require 'test_helper'

class DistrictTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert District.new.valid?
  end
end
