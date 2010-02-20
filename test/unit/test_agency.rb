require File.join(File.dirname(__FILE__), '..', 'helper')

class TestAgency < Test::Unit::TestCase

  def setup
    @agency1 = Nextbus::Agency.new
  end

  def test_tag_attr
    assert_attr_accessor @agency1, :tag
  end
  def test_title_attr
    assert_attr_accessor @agency1, :title
  end
  def test_short_title_attr
    assert_attr_accessor @agency1, :short_title
  end
  def test_region_title_attr
    assert_attr_accessor @agency1, :region_title
  end

  def test_routes_attr
    assert_attr_accessor @agency1, :routes, []
  end
  def test_vehicles_attr
    assert_attr_accessor @agency1, :vehicles, []
  end

  def test_instantiated_with_attrs
    attrs = {:tag => 'my tag', :title => 'my title', :short_title => 'my short title', :region_title => 'my region title'}
    assert_instantiated_with_attrs Nextbus::Agency, attrs
  end

end
