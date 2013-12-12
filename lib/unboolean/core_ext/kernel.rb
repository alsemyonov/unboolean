require 'unboolean'
require 'unboolean/maybe'

module Kernel
  def maybe
    @__unboolean_maybe ||= Unboolean::Maybe.new
  end
end
