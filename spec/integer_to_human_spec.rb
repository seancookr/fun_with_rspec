require 'spec_helper'
require './lib/integer_to_human'

describe IntegerToHuman do
  subject { described_class }

  context 'under 1000' do
    context 'aughts' do
      it { expect(subject.to_human(1)).to eq 'One' }
    end
  end


end
