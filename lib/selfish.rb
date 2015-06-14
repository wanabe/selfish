require "selfish/version"

module Selfish
  def selfish(&b)
    proc {|_, *a| _.instance_exec(*a, &b)}
  end
  def _self
    self
  end
end

class Object
  include Selfish
end
