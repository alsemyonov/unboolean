require 'unboolean/maybe'

module Unboolean
  module False
    def |(other)
      other.is_a?(Unboolean::Maybe) ? other | self : !!(other)
    end

    def ^(other)
      other.is_a?(Unboolean::Maybe) ? other ^ self : (!other).is_a?(FalseClass)
    end

    def ==(other)
      other.is_a?(Unboolean::Maybe) ? other == self : (!!other).is_a?(FalseClass)
    end
  end
end
