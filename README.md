# tzf-rb

[![tzf](https://badge.fury.io/rb/tzf.svg)](https://badge.fury.io/rb/tzf)
![build](https://github.com/HarlemSquirrel/tzf-rb/actions/workflows/main.yml/badge.svg)

Ruby time zone lookup for coordinates using the [tzf-rs](https://github.com/ringsaturn/tzf-rs) Rust library.

Data is sourced from [Timezone Boundary Builder](https://github.com/evansiroky/timezone-boundary-builder).

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add tzf

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install tzf

## Usage

```rb
require 'tzf'

TZF.tz_name(40.74771675713742, -73.99350390136448)
# => "America/New_York"
```

## Development

Requirements:

- (Rust)[https://www.rust-lang.org/learn/get-started]
- (Ruby)[https://www.ruby-lang.org]

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tzf. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/tzf/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the tzf project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tzf/blob/main/CODE_OF_CONDUCT.md).
