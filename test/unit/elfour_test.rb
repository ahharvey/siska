require 'test_helper'

class ElfourTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Elfour.new.valid?
  end
end
