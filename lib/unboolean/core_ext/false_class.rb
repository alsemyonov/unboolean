require 'unboolean'
require 'unboolean/maybe'

class FalseClass
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
