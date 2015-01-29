# Ehou

Patches Date and Time to add methods to convert to Japanese **Ehou** direction.

Ehou is lucky direction in Japan changing every year.  
see. http://ja.wikipedia.org/wiki/%E6%AD%B3%E5%BE%B3%E7%A5%9E

## Usage

```ruby
require 'ehou'

Date.new(2015).ehou         # "西南西"
Date.new(2015).ehou.angle   # 255 (0 means north, 90 is east, 180 is south)
Time.local(2016).ehou       # "南南東"
Time.local(2016).ehou.angle # 165
```````````````

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
