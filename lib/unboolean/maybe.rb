require 'unboolean/version'
require 'singleton'

module Unboolean
  class Maybe
    include Singleton

    def &(value)
      value.is_a?(FalseClass) ? false : Maybe.instance
    end

    def |(value)
      value.is_a?(TrueClass) ? true : Maybe.instance
    end

    def ^(*)
      Maybe.instance
    end

    def !
      Maybe.instance
    end

    def ==(*)
      Maybe.instance
    end

    def inspect
      'maybe'
    end
    alias to_s inspect
  end
end
