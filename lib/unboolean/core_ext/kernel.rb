require 'unboolean'
require 'unboolean/maybe'

module Kernel
  def maybe
    Unboolean::Maybe.instance
  end
end
