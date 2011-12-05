require 'test_helper'

class SdistrictTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Sdistrict.new.valid?
  end
end
