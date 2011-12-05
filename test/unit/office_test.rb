require 'test_helper'

class OfficeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Office.new.valid?
  end
end
