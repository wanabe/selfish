require "selfish/core"

module Selfish::UnderScore
  def _(&b)
    if b
      selfish(&b)
    else
      _self
    end
  end
end

class Object
  include Selfish::UnderScore
end
