require 'spec_helper'

describe Unboolean::Maybe do
  subject(:maybe) { described_class.new }

  specify('maybe MAY BE maybe') { expect(maybe).to eql(maybe) }
  specify('NOT maybe may be maybe') { expect(!maybe).to eql(maybe) }

  specify('maybe MAY BE equal to maybe') { expect(maybe == maybe).to eql(maybe) }
  specify('maybe MAY BE equal to true') { expect(maybe == true).to eql(maybe) }
  specify('maybe MAY BE equal to false') { expect(maybe == false).to eql(maybe) }

  specify('maybe AND true may be maybe') { expect(maybe & true).to eql(maybe) }
  specify('maybe AND false may be false') { expect(maybe & false).to eql(false) }
  specify('maybe AND maybe may be maybe') { expect(maybe & maybe).to eql(maybe) }

  specify('maybe OR true should be true') { expect(maybe | true).to eql(true) }
  specify('maybe OR false may be maybe') { expect(maybe | false).to eql(maybe) }
  specify('maybe OR maybe may be maybe') { expect(maybe | maybe).to eql(maybe) }

  specify('maybe XOR true may be maybe') { expect(maybe ^ true).to eql(maybe) }
  specify('maybe XOR false may be maybe') { expect(maybe ^ false).to eql(maybe) }
  specify('maybe XOR maybe may be maybe') { expect(maybe ^ maybe).to eql(maybe) }
end
