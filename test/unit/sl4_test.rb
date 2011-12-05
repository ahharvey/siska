require 'test_helper'

class SL4Test < ActiveSupport::TestCase
  def test_should_be_valid
    assert SL4.new.valid?
  end
end
