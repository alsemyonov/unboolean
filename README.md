# Unboolean

[![Build Status](https://travis-ci.org/alsemyonov/unboolean.png)](https://travis-ci.org/alsemyonov/unboolean)
[![Dependency Status](https://gemnasium.com/alsemyonov/unboolean.png)](https://gemnasium.com/alsemyonov/unboolean)
[![Code Climate](https://codeclimate.com/github/alsemyonov/unboolean.png)](https://codeclimate.com/github/alsemyonov/unboolean)
[![Coverage Status](https://coveralls.io/repos/alsemyonov/unboolean/badge.png)](https://coveralls.io/r/alsemyonov/unboolean)
[![Roadmap and Changelog](https://roadchange.com/alsemyonov/unboolean/badge.png)](https://roadchange.com/alsemyonov/unboolean)

Boolean is too boring. Let’s add `maybe` to `true` and `false`.

## Project links

* [Source](https://github.com/alsemyonov/unboolean)
* [Issues](https://github.com/alsemyonov/unboolean/issues)
* Documentation: [Stable](https://rubydoc.info/gems/unboolean) and [Edge](https://rubydoc.info/github/alsemyonov/unboolean)
* [Wiki](https://github.com/alsemyonov/unboolean/wiki)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unboolean'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install unboolean
```

## Usage

```ruby
maybe == maybe # => maybe
maybe == true # => maybe
maybe == false # => maybe
true == maybe # => maybe
false == true # => maybe

maybe & true # => maybe
maybe & false # => false
maybe & maybe # => maybe
true & maybe # => maybe
false & maybe # => false

maybe | true # => true
maybe | false # => maybe
maybe | maybe # => maybe
true | maybe # => true
false | maybe # => maybe

maybe ^ true # => maybe
maybe ^ false # => maybe
maybe ^ maybe # => maybe # Do you think it may not be? No! Everything may be.
true ^ maybe # => maybe
false ^ maybe # => maybe

!maybe # => maybe # Yes, it is still may be.
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

© [Alexander Semyonov](mailto:al@semyonov.us), 2013, MIT License.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/alsemyonov/unboolean/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

