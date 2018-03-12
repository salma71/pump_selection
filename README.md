# PumpSelection

Welcome to Pump_selection gem!
  Introduction
    Basic gem to scrape a centrifugal pump manufacturer website (www.packopumps.com) with two level deep nested data using basic Object Oriented Ruby.

  Overview
  This application is supposed to show the user:
    level-one : All the pump ranges that is being manufactured.
    level-two : All the available series for each pump.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pump_selection'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pump_selection

## Usage

1. Run pump_selection

2. Follow the CLI prompts:

  * Type 'show product list' To discover the company's product ranges

  * Type 'show series list' to discover the available series for each product

  * Type 'close' to exit the application

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[salma71]/pump_selection. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PumpSelection project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pump_selection/blob/master/CODE_OF_CONDUCT.md).
