# Selfish

Selfish#selfish ... Set block first parameter to self
Selfish#_self   ... just 'self'

You can use `Selfish::UnderScore#_` as alias of above two methods with `require "selfish/_"`.
And also you can use `Selfish::OneCharacter#s` as `self` and `Selfish::OneCharacter#i` as same as `Selfish#selfish`
with `require "selfish/1"`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'selfish'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install selfish

## Usage

Like below:

```
require "selfish/all"

["foo", "bar"].map.with_index &i("baz", "qux"){|a, b, i| [a, b, i, _, upcase]}
#=> [["baz", "qux", 0, "foo", "FOO"], ["baz", "qux", 1, "bar", "BAR"]]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wanabe/selfish. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

