require File.join(File.dirname(__FILE__), '..', 'helper')

class TestVehicle < Test::Unit::TestCase

  def setup
    @vehicle1 = Nextbus::Vehicle.new
  end

  def test_id_attr
    assert_attr_accessor @vehicle1, :id
  end

end
