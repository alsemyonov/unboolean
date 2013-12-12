require 'unboolean/maybe'
require 'singleton'

module Unboolean
  module True
    def &(other)
      other.is_a?(Unboolean::Maybe) ? other & self : super
    end

    def ^(other)
      other.is_a?(Unboolean::Maybe) ? other ^ self : super
    end

    def ==(other)
      other.is_a?(Unboolean::Maybe) ? other == self : super
    end
  end
end
