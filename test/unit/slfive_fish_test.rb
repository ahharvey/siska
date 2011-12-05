require 'test_helper'

class SlfiveFishTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SlfiveFish.new.valid?
  end
end
