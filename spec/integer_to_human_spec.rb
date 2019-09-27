require 'spec_helper'
require './lib/integer_to_human'

describe IntegerToHuman do
  subject { described_class }

  context 'under 1000' do
    context 'aughts' do
      context 'unique' do
        it { expect(subject.to_human(0)).to eq 'zero' }
        it { expect(subject.to_human(1)).to eq 'one' }
        it { expect(subject.to_human(2)).to eq 'two' }
        it { expect(subject.to_human(10)).to eq 'ten' }
        it { expect(subject.to_human(19)).to eq 'nineteen' }
      end

      context 'under 100' do
        it { expect(subject.to_human(20)).to eq 'twenty' }
        it { expect(subject.to_human(21)).to eq 'twenty-one' }
        it { expect(subject.to_human(22)).to eq 'twenty-two' }
        it { expect(subject.to_human(56)).to eq 'fifty-six' }
        it { expect(subject.to_human(96)).to eq 'ninety-six' }
      end

      context 'under 1000' do

      end
    end
  end


end
