# Fun with RSpec (An intro to TDD)

Converting integers to human readable strings is a very well defined problem. We know ahead of time the goal, and thus, we are able to easily create failing tests because the objective of the code we are trying to create is clear. It is as simple as starting with the first test.

To be considered a correct solution, this method should work correctly for all integers up to and including 2147483648 (althought theoreitcally this should be much higher).

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


Running Tests
```bash
$ bundle exec rspec --format documentation
```

# Goals

- Focus on red/green cycles, refactoring to get the next test passing.
- Learn how to identify boundry conditions in the problem and the special edge cases
