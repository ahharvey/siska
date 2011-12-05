require 'test_helper'

class FishTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Fish.new.valid?
  end
end
