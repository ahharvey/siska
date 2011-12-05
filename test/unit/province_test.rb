require 'test_helper'

class ProvinceTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Province.new.valid?
  end
end
