require 'spec_helper'

describe true do
  subject { true }

  context '==' do
    specify('maybe #=> maybe') { expect(true == maybe).to eql(maybe) }
  end

  context '&' do
    specify('maybe #=> maybe') { expect(true & maybe).to eql(maybe) }
  end

  context '|' do
    specify('maybe #=> true') { expect(true | maybe).to eql(true) }
  end

  context '^' do
    specify('maybe #=> maybe') { expect(true ^ maybe).to eql(maybe) }
  end
end
