require 'spec_helper'

describe maybe do
  subject(:maybe) { Unboolean::Maybe.instance }

  its(:inspect) { should == 'maybe' }

  specify('#=> maybe') { expect(subject).to eql(maybe) }

  context '!' do
    specify('#=> maybe') { expect(!subject).to eql(maybe) }
  end

  context '==' do
    specify('true #=> maybe') { expect(subject == true).to eql(maybe) }
    specify('false #=> maybe') { expect(subject == false).to eql(maybe) }
    specify('maybe #=> maybe') { expect(subject == maybe).to eql(maybe) }
  end

  context '&' do
    specify('true #=> maybe') { expect(subject & true).to eql(maybe) }
    specify('false #=> false') { expect(subject & false).to eql(false) }
    specify('maybe #=> maybe') { expect(subject & maybe).to eql(maybe) }
  end

  context '|' do
    specify('true #=> true') { expect(subject | true).to eql(true) }
    specify('false #=> maybe') { expect(subject | false).to eql(maybe) }
    specify('maybe #=> maybe') { expect(subject | maybe).to eql(maybe) }
  end

  context '^' do
    specify('true #=> maybe') { expect(subject ^ true).to eql(maybe) }
    specify('false #=> maybe') { expect(subject ^ false).to eql(maybe) }
    specify('maybe #=> maybe') { expect(subject ^ maybe).to eql(maybe) }
  end
end
