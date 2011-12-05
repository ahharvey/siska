require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Position.new.valid?
  end
end
