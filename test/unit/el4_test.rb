require 'test_helper'

class EL4Test < ActiveSupport::TestCase
  def test_should_be_valid
    assert EL4.new.valid?
  end
end
