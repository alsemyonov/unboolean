require 'unboolean/version'
require 'singleton'

module Unboolean
  class Maybe
    # May be singleton?
    def self.new
      @__unboolean_maybe_instance ||= super
    end

    def &(value)
      value.is_a?(FalseClass) ? false : Maybe.new
    end

    def |(value)
      value.is_a?(TrueClass) ? true : Maybe.new
    end

    def ^(*)
      Maybe.new
    end

    def !
      Maybe.new
    end

    def ==(*)
      Maybe.new
    end

    def inspect
      'maybe'
    end
  end
end
