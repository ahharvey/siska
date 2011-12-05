require 'test_helper'

class LandingCenterTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert LandingCenter.new.valid?
  end
end
