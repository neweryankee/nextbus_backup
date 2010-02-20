module Nextbus
  class Vehicle

    include InstantiateWithAttrs
    include AttrWithDefault

    attr_accessor :id, :agency, :reports => []

  end
end