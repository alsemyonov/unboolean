require 'spec_helper'

describe Kernel do
  context '#maybe' do
    specify('provides instance of Unboolean::Maybe') { expect(maybe).to be_instance_of(Unboolean::Maybe) }
    specify('equals to Unboolean::Maybe.instance') { expect(maybe).to eql(Unboolean::Maybe.instance) }
  end
end
