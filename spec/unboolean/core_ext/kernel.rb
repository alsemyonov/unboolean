require 'spec_helper'

describe 'Kernel#maybe' do
  specify('provides instance of Unboolean::Maybe') { expect(maybe).to be_a(Unboolean::Maybe) }
  specify('equals to Unboolean::Maybe.instance') { expect(maybe).to eql(Unboolean::Maybe.instance) }
end
