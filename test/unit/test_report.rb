require File.join(File.dirname(__FILE__), '..', 'helper')

class TestReport < Test::Unit::TestCase

  def setup
    @report1 = Nextbus::Report.new
  end

  def test_lat_attr
    assert_attr_accessor @report1, :lat
  end
  def test_lon_attr
    assert_attr_accessor @report1, :lon
  end
  def test_heading_attr
    assert_attr_accessor @report1, :heading
  end
  def test_time_attr
    assert_attr_accessor @report1, :time
  end

end
