require 'test_helper'

class SectorTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Sector.new.valid?
  end
end
