require File.join(File.dirname(__FILE__), '..', 'helper')

class TestPrediction < Test::Unit::TestCase

  def setup
    @prediction1 = Nextbus::Prediction.new
  end

  def test_time_attr
    assert_attr_accessor @prediction1, :time
  end
  def test_departure_attr
    assert_attr_accessor @prediction1, :departure
  end

  def test_instantiated_with_attrs
    attrs = {:time => Time.now, :departure => false}
    assert_instantiated_with_attrs Nextbus::Prediction, attrs
  end

end
