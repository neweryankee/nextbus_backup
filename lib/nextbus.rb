begin
  # Try to require the preresolved locked set of gems.
  require File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  # Fall back on doing an unlocked resolve at runtime.
  require "rubygems"
  require "bundler"
  Bundler.setup
end

# Your application requires come here
require 'instantiate_with_attrs'
require 'attr_with_default'
require 'httparty'
require 'hashie'
dir = File.join(File.dirname(__FILE__), 'nextbus')
$LOAD_PATH.unshift(dir)
Dir[File.join(dir, "*.rb")].each {|file| require File.basename(file) }
