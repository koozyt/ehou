# Ehou

[![Build Status](https://travis-ci.org/sample-of-ikesato/travis-test.svg?branch=master)](https://travis-ci.org/sample-of-ikesato/travis-test)
[![Coverage Status](https://coveralls.io/repos/sample-of-ikesato/travis-test/badge.svg?branch=master)](https://coveralls.io/r/sample-of-ikesato/travis-test?branch=master)

Patches `Date` and `Time` to add methods and convert to Japanese **Ehou** direction.

Ehou is the lucky direction of the year which is determined every year by the [Celestial stems][1].
It is customary in Japan at Setsubun (celebrated on Feb 3) to eat a special sushi roll in silence facing the "Ehou" direction for good fortune.

Have a great Setsubun!

For more info on "Ehou", see: [Ehou][2]

[1]:http://en.wikipedia.org/wiki/Celestial_stem
[2]:http://ja.wikipedia.org/wiki/%E6%AD%B3%E5%BE%B3%E7%A5%9E#.E6.81.B5.E6.96.B9

## Usage

```ruby
require 'ehou'

Date.new(2015).ehou           # "西南西"
Date.new(2015).ehou.angle     # 255 (0 means north, 90 is east, 180 is south)
Date.new(2015).ehou.to_en     # "West-southwest"
Date.new(2015).ehou.shorten   # "WSW"
Time.local(2016).ehou         # "南南東"
Time.local(2016).ehou.angle   # 165
Time.local(2016).ehou.to_en   # "South-southeast"
Time.local(2016).ehou.shorten # "SSE"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ehou'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ehou

## Contributing

1. Fork it ( https://github.com/koozyt/ehou/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Make sure all your changes are covered by tests
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request