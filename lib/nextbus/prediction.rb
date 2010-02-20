module Nextbus
  class Prediction

    include InstantiateWithAttrs
    include AttrWithDefault

    attr_accessor :time, :departure, :stop

  end
end