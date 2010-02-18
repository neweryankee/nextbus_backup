require 'digest/sha1'

# DO NOT MODIFY THIS FILE
module Bundler
  FINGERPRINT = "82bbede2178c9651613fd83b7e5a17045de21c88"
  LOAD_PATHS = ["/opt/local/lib/ruby/gems/1.8/gems/linecache-0.43/lib", "/opt/local/lib/ruby/gems/1.8/gems/ruby-debug-base-0.10.3/lib", "/opt/local/lib/ruby/gems/1.8/gems/rake-0.8.7/lib", "/Users/gsterndale/.bundle/gems/mocha-0.9.8/lib", "/Users/gsterndale/.bundle/gems/columnize-0.3.1/lib", "/opt/local/lib/ruby/gems/1.8/gems/ruby-debug-0.10.3/cli"]
  AUTOREQUIRES = {:default=>["mocha", "ruby-debug"]}

  def self.match_fingerprint
    print = Digest::SHA1.hexdigest(File.read(File.expand_path('../../Gemfile', __FILE__)))
    unless print == FINGERPRINT
      abort 'Gemfile changed since you last locked. Please `bundle lock` to relock.'
    end
  end

  def self.setup(*groups)
    match_fingerprint
    LOAD_PATHS.each { |path| $LOAD_PATH.unshift path }
  end

  def self.require(*groups)
    groups = [:default] if groups.empty?
    groups.each do |group|
      (AUTOREQUIRES[group] || []).each { |file| Kernel.require file }
    end
  end

  # Setup bundle when it's required.
  setup
end
