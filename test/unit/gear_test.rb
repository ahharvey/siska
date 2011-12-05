require 'test_helper'

class GearTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Gear.new.valid?
  end
end
