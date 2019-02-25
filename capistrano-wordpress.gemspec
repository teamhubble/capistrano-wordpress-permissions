lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/wordpress/version'

Gem::Specification.new do |spec|
  spec.version       = Capistrano::Wordpress::VERSION
  spec.name          = 'capistrano-wordpress-permissions'
  spec.authors       = ['Alexandre Zicat']
  spec.email         = ['alexzicat@teamhubble.com']

  spec.summary       = %q{Changes the releases' owner to the Wordpress user.}
  spec.description   = %q{Changes the releases' owner to the Wordpress user, in order to be able to install and update plugins.}
  spec.homepage      = 'https://github.com/teamhubble/capistrano-wordpress'
  spec.license       = 'MIT'

  spec.files = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3'

  spec.add_development_dependency 'bundler', '~> 2.0'
end
