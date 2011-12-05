require 'test_helper'

class SlsixTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Slsix.new.valid?
  end
end
