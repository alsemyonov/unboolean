require 'unboolean'
require 'unboolean/maybe'

module Kernel
  def maybe
    @__unboolean_maybe ||= Unboolean::Maybe.new
  end
end

class TrueClass
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

class FalseClass
  def |(other)
    other.is_a?(Unboolean::Maybe) ? other | self : super
  end

  def ^(other)
    other.is_a?(Unboolean::Maybe) ? other ^ self : super
  end

  def ==(other)
    other.is_a?(Unboolean::Maybe) ? other == self : super
  end
end
