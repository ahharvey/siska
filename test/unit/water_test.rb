require 'test_helper'

class WaterTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Water.new.valid?
  end
end
