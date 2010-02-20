require File.join(File.dirname(__FILE__), '..', 'helper')

class TestDirection < Test::Unit::TestCase

  def setup
    @direction1 = Nextbus::Direction.new
  end

  def test_tag_attr
    assert_attr_accessor @direction1, :tag
  end
  def test_title_attr
    assert_attr_accessor @direction1, :title
  end
  def test_name_attr
    assert_attr_accessor @direction1, :name
  end

end
