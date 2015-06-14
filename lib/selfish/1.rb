require "selfish"

module Selfish::OneCharacter
  alias i selfish
  alias s _self
end

class Object
  include Selfish::OneCharacter
end
