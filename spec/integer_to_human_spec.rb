require 'spec_helper'
require './lib/integer_to_human'

describe IntegerToHuman do
  subject { described_class }

  context 'under 1000' do
    context 'aughts' do
      it { expect(subject.to_human(0)).to eq 'Zero' }
      it { expect(subject.to_human(1)).to eq 'One' }
    end

    context 'teens' do
      it { expect(subject.to_human(10)).to eq 'Ten' }
    end

    context 'multiples of 10' do

    end

    context 'multiples of 100' do

    end

    context 'composites' do

    end
  end


end
