# ChicagoOwnedLand

This gem is a wrapper that let's you use Ruby to access information on all the land the City of the Chicago owns.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chicago_owned_land'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chicago_owned_land

## Usage

To get all of addresses the City of Chicago owns, run this code:

```ruby
land = ChicagoOwnedLand::Land.all
```

To filter by a specific keyword, run the code below:

```ruby
land = ChicagoOwnedLand::Land.search("Logan Square")
```

Replace 'Logan Square' with your own keyword. Be aware though, this will return you 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chicago_owned_land. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

