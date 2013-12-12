require 'unboolean'
require 'unboolean/maybe'

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
