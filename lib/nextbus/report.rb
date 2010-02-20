module Nextbus
  class Report

    include InstantiateWithAttrs

    attr_accessor :lat, :lon, :heading, :time

  end
end