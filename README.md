# EntityComponents

This is a simple system for having entities with data components in Rails. Store component data in a single table/collection
and define components in a separate directory.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'entity_components'
```

And then execute:

    $ bundle

## Usage

Make a model that has `components` text field and a `values` text field. Include `EntityComponents` into it like so:

```ruby
class Entity < ApplicationRecord
  include EntityComponents
end
```

Then define components in `app/components` with a constructor that takes a hash of properties like so:

```ruby
class Position < OpenStruct
end
```

Now you can create a new entity like so:

```ruby
2.3.0 :001 > e = Entity.new(id: 'a', components: ['position'], values: { position: { x: 0, y: 5 } })
 => #<Entity id: nil, components: ["position"], values: {:position=>{:x=>0, :y=>5}}, created_at: nil, updated_at: nil>
2.3.0 :002 > e.position.y
 => 5
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/entity_components. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

