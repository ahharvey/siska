require 'test_helper'

class SL5FishTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SL5Fish.new.valid?
  end
end
