require "selfish/version"

module Selfish
  def selfish(*a, &b)
    if !a.empty? && !b
      b = a.shift.to_proc
    end
    proc {|_, *arg| _.instance_exec(*a, *arg, &b)}
  end
  def _self
    self
  end
end

class Object
  include Selfish
end
