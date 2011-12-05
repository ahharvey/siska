require 'test_helper'

class BoatSizeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BoatSize.new.valid?
  end
end
