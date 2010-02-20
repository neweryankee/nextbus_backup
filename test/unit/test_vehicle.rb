require File.join(File.dirname(__FILE__), '..', 'helper')

class TestVehicle < Test::Unit::TestCase

  def setup
    @vehicle1 = Nextbus::Vehicle.new
  end

  def test_id_attr
    assert_attr_accessor @vehicle1, :id
  end

  def test_agency_attr
    assert_attr_accessor @vehicle1, :agency
  end
  def test_reports_attr
    assert_attr_accessor @vehicle1, :reports, []
  end

  def test_instantiated_with_attrs
    attrs = {:id => 'my id'}
    assert_instantiated_with_attrs Nextbus::Vehicle, attrs
  end

end
