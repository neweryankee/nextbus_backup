module Nextbus
  class Direction

    include InstantiateWithAttrs
    include AttrWithDefault

    attr_accessor :tag, :title, :name, :route, :reports => [], :stops => []

  end
end