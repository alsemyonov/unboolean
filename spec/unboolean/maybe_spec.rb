require 'spec_helper'

describe 'maybe' do
  subject(:maybe) { Unboolean::Maybe.new }

  its(:inspect) { should == 'maybe' }

  specify('#=> maybe') { expect(maybe).to eql(maybe) }

  context '!' do
    specify('#=> maybe') { expect(!maybe).to eql(maybe) }
  end

  context '==' do
    specify('maybe #=> maybe') { expect(maybe == maybe).to eql(maybe) }
    specify('true #=> maybe') { expect(maybe == true).to eql(maybe) }
    specify('false #=> maybe') { expect(maybe == false).to eql(maybe) }
  end

  context '&' do
    specify('true #=> maybe') { expect(maybe & true).to eql(maybe) }
    specify('false #=> false') { expect(maybe & false).to eql(false) }
    specify('maybe #=> maybe') { expect(maybe & maybe).to eql(maybe) }
  end

  context '|' do
    specify('true #=> true') { expect(maybe | true).to eql(true) }
    specify('false #=> maybe') { expect(maybe | false).to eql(maybe) }
    specify('maybe #=> maybe') { expect(maybe | maybe).to eql(maybe) }
  end

  context '^' do
    specify('true #=> maybe') { expect(maybe ^ true).to eql(maybe) }
    specify('false #=> maybe') { expect(maybe ^ false).to eql(maybe) }
    specify('maybe #=> maybe') { expect(maybe ^ maybe).to eql(maybe) }
  end
end
