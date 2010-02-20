require File.join(File.dirname(__FILE__), '..', 'helper')

class TestStop < Test::Unit::TestCase

  def setup
    @stop1 = Nextbus::Stop.new
  end

  def test_tag_attr
    assert_attr_accessor @stop1, :tag
  end
  def test_title_attr
    assert_attr_accessor @stop1, :title
  end
  def test_short_lat_attr
    assert_attr_accessor @stop1, :lat
  end
  def test_region_lon_attr
    assert_attr_accessor @stop1, :lon
  end
  def test_region_id_attr
    assert_attr_accessor @stop1, :id
  end

end