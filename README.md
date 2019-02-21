# Fun with RSpec (An intro to TDD)

Converting integers to human readable strings is a very well defined problem. We know ahead of time the goal, and thus, we are able to easily create failing tests because the objective of the code is clear. It is as simple as starting with the first test.

```ruby
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
```
