require File.join(File.dirname(__FILE__), '..', 'helper')

class TestRoute < Test::Unit::TestCase

  def setup
    @route1 = Nextbus::Route.new
  end

  def test_tag_attr
    assert_attr_accessor @route1, :tag
  end
  def test_title_attr
    assert_attr_accessor @route1, :title
  end

  def test_agency_attr
    assert_attr_accessor @route1, :agency
  end
  def test_directions_attr
    assert_attr_accessor @route1, :directions, []
  end

  def test_instantiated_with_attrs
    attrs = {:tag => 'my tag', :title => 'my title'}
    assert_instantiated_with_attrs Nextbus::Route, attrs
  end

end
