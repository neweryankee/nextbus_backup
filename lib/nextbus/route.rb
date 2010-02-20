module Nextbus
  class Route

    include InstantiateWithAttrs
    include AttrWithDefault

    attr_accessor :tag, :title, :agency, :directions => []

  end
end