module Nextbus
  class Stop

    include InstantiateWithAttrs
    include AttrWithDefault

    attr_accessor :tag, :title, :lat, :lon, :id, :direction, :predictions => []

  end
end