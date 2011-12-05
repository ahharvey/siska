require 'test_helper'

class SL5Test < ActiveSupport::TestCase
  def test_should_be_valid
    assert SL5.new.valid?
  end
end
