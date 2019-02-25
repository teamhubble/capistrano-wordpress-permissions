# Capistrano::Wordpress::Permissions

Changes the releases' owner to the Wordpress user. 
Fixes issues where the Wordpress user does not have enough permissions to install or update plugins.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-wordpress-permissions'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-wordpress

## Usage

Add the following lines inside your Capfile:

```ruby
require 'capistrano/wordpress/permissions'
install_plugin Capistrano::Wordpress::Permissions
```

This plugin needs to fetch the deployment user. 
It is thereby necessary to set it in your configuration file(s):

```ruby
set :user, '[REPLACE_WITH_DEPLOYMENT_USER]'
```

By default, this plugin use the wordpress user "www-data". 
It is possible to change this user in your configuration file(s):

```ruby
set :wordpress_user, '[YOUR_WORDPRESS_USER]'
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
