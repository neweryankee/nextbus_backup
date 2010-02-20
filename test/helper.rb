begin
  # Try to require the preresolved locked set of gems.
  require File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  # Fall back on doing an unlocked resolve at runtime.
  require "rubygems"
  require "bundler"
  Bundler.setup
end

require 'test/unit'
require 'mocha'
require 'erb'
require 'ruby-debug'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'nextbus'

class Test::Unit::TestCase

  def assert_attr_accessor(object, attr_name, expected_value=nil, new_value='some value')
    assert_attr_reader(object, attr_name, expected_value)
    assert_attr_writer(object, attr_name, expected_value)
    setter = setter_from_attr_name(attr_name)
    assert_not_equal new_value, object.send(attr_name)
    object.send(setter, new_value)
    assert_equal new_value, object.send(attr_name)
    object.send(setter, expected_value)
  end

  def assert_attr_reader(object, attr_name, expected_value=nil)
    assert object.respond_to?(attr_name)
    assert_equal expected_value, object.send(attr_name)
  end

  def assert_attr_writer(object, attr_name, new_value=nil)
    setter = setter_from_attr_name(attr_name)
    assert object.respond_to?(setter)
    assert_equal new_value, object.send(setter, new_value)
  end

  def setter_from_attr_name(attr_name)
    "#{attr_name.to_s}=".to_sym
  end

end
