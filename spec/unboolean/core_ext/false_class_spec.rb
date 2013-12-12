require 'spec_helper'

describe false do
  subject { false }

  specify('#=> false') { expect(subject).to eql(false) }

  context '!' do
    specify('#=> true') { expect(!subject).to eql(true) }
  end

  context '==' do
    specify('true #=> false') { expect(subject == true).to eql(false) }
    specify('false #=> true') { expect(subject == false).to eql(true) }
    specify('maybe #=> maybe') { expect(subject == maybe).to eql(maybe) }
  end

  context '&' do
    specify('true #=> false') { expect(subject & true).to eql(false) }
    specify('false #=> false') { expect(subject & false).to eql(false) }
    specify('maybe #=> false') { expect(subject & maybe).to eql(false) }
  end

  context '|' do
    specify('true #=> true') { expect(subject | true).to eql(true) }
    specify('false #=> false') { expect(subject | false).to eql(false) }
    specify('maybe #=> maybe') { expect(subject | maybe).to eql(maybe) }
  end

  context '^' do
    specify('true #=> true') { expect(subject ^ true).to eql(true) }
    specify('false #=> false') { expect(subject ^ false).to eql(false) }
    specify('maybe #=> maybe') { expect(subject ^ maybe).to eql(maybe) }
  end
end
