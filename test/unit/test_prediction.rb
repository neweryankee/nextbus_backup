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

end
