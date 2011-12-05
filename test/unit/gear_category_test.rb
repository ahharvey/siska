require 'test_helper'

class GearCategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert GearCategory.new.valid?
  end
end
