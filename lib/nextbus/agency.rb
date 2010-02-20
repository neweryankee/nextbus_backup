module Nextbus
  class Agency

    include InstantiateWithAttrs
    include AttrWithDefault

    attr_accessor :tag, :title, :short_title, :region_title, :routes => [], :vehicles => []

  end
end
