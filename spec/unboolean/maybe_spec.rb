require 'spec_helper'

describe Unboolean::Maybe do
  subject(:maybe) { described_class.new }

  specify('maybe MAY BE maybe') { expect(maybe).to eql(maybe) }
  specify('NOT maybe may be maybe') { expect(!maybe).to eql(maybe) }

  specify('maybe MAY BE equal to maybe') { expect(maybe == maybe).to eql(maybe) }
  specify('maybe MAY BE equal to true') { expect(maybe == true).to eql(maybe) }
  specify('maybe MAY BE equal to false') { expect(maybe == false).to eql(maybe) }
  specify('true MAY BE equal to maybe') { expect(true == maybe).to eql(maybe) }
  specify('false MAY BE equal to maybe') { expect(false == maybe).to eql(maybe) }

  specify('maybe AND true may be maybe') { expect(maybe & true).to eql(maybe) }
  specify('maybe AND false may be false') { expect(maybe & false).to eql(false) }
  specify('maybe AND maybe may be maybe') { expect(maybe & maybe).to eql(maybe) }
  specify('true AND maybe may be maybe') { expect(true & maybe).to eql(maybe) }
  specify('false AND maybe may be false') { expect(false & maybe).to eql(false) }

  specify('maybe OR true should be true') { expect(maybe | true).to eql(true) }
  specify('maybe OR false may be maybe') { expect(maybe | false).to eql(maybe) }
  specify('maybe OR maybe may be maybe') { expect(maybe | maybe).to eql(maybe) }
  specify('true OR maybe should be true') { expect(true | maybe).to eql(true) }
  specify('false OR maybe may be maybe') { expect(false | maybe).to eql(maybe) }

  specify('maybe XOR true may be maybe') { expect(maybe ^ true).to eql(maybe) }
  specify('maybe XOR false may be maybe') { expect(maybe ^ false).to eql(maybe) }
  specify('maybe XOR maybe may be maybe') { expect(maybe ^ maybe).to eql(maybe) }
  specify('true XOR maybe may be maybe') { expect(true ^ maybe).to eql(maybe) }
  specify('false XOR maybe may be maybe') { expect(false ^ maybe).to eql(maybe) }

  its(:inspect) { should == 'maybe' }
end
