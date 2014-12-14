# Guard::Jaspec [![Gem Version](https://badge.fury.io/rb/guard-jaspec.png)](http://badge.fury.io/rb/guard-jaspec)

Guard::Jaspec supports the automatic running of [Jaspec](https://github.com/gisikw/jaspec) JavaScript specs.

## Installation

Please ensure you have [Guard](http://github.com/guard/guard) installed before you continue.

Add the following to your application's Gemfile:

    group :development do
      gem 'guard-jaspec'
    end

And then execute:

    $ bundle

Add Guard::Jaspec to your Guardfile by running:

    $ guard init jaspec

## Usage

Please refer to the [Guard usage doc](http://github.com/guard/guard#readme)

## Example Guardfile

This is the default Guardfile configuration, and it assumes a Rails-like asset structure. If your JavaScript source files or specs are in different directories, you'll want to modify this. This configuration likewise assumes that you're using the same language (JavaScript or CoffeeScript) between your source files and specs.

```ruby
guard :jaspec do
  watch(%r{^spec/javascripts/(.\*)Spec\.(js|coffee)$})
  watch(%r{^app/assets/javascripts/(.\*)\.(js|coffee)$}) { |m| "spec/javascripts/#{m[1]}Spec.#{m[2]}" }
end
```

## Options

### List of available options

```ruby
all_on_start: false   # run all specs on startup, default: true
```

## Contributing

1. Fork it ( https://github.com/gisikw/guard-jaspec/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
