require 'spec_helper'

describe false do
  subject { false }

  context '==' do
    specify('maybe #=> maybe') { expect(false == maybe).to eql(maybe) }
  end

  context '&' do
    specify('maybe #=> false') { expect(false & maybe).to eql(false) }
  end

  context '|' do
    specify('maybe #=> maybe') { expect(false | maybe).to eql(maybe) }
  end

  context '^' do
    specify('maybe #=> maybe') { expect(false ^ maybe).to eql(maybe) }
  end
end
