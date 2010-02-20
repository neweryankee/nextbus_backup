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

end
