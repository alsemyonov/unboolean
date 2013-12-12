# Unboolean

Boolean is too boring. Let’s add `maybe` to `true` and `false`.

## Installation

Add this line to your application's Gemfile:

    gem 'unboolean'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unboolean

## Usage

```ruby
maybe == maybe # => maybe

maybe & true # => maybe
maybe & false # => false
maybe & maybe # => maybe

maybe | true # => true
maybe | false # => maybe
maybe | maybe # => maybe

maybe ^ true # => maybe
maybe ^ false # => maybe
maybe ^ maybe # => maybe # Do you think it may not be? No! Everything may be.

!maybe # => maybe # Yes, it is still may be.
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
