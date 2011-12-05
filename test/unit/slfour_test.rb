require 'test_helper'

class SlfourTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Slfour.new.valid?
  end
end
