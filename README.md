# Capistrano::Wordpress

Changes the releases' owner to the Wordpress user, in order to be able to install and update plugins.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-wordpress'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-wordpress

## Usage

Add the following lines inside your Capfile:

```ruby
require 'capistrano/wordpress'
install_plugin Capistrano::Wordpress::Permissions
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
