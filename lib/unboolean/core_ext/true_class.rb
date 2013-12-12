require 'unboolean'
require 'unboolean/maybe'

class TrueClass
  def &(other)
    other.is_a?(Unboolean::Maybe) ? other & self : !!(other)
  end

  def ^(other)
    other.is_a?(Unboolean::Maybe) ? other ^ self : (!other).is_a?(TrueClass)
  end

  def ==(other)
    other.is_a?(Unboolean::Maybe) ? other == self : (!!other).is_a?(TrueClass)
  end
end
