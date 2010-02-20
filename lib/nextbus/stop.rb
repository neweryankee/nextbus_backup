module Nextbus
  class Stop

    include InstantiateWithAttrs

    attr_accessor :tag, :title, :lat, :lon, :id

  end
end