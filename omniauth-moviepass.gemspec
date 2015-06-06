# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'omniauth', 'moviepass', 'version'), __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "omniauth-moviepass"
  gem.version       = OmniAuth::Moviepass::VERSION
  gem.license       = "MIT"
  gem.authors       = ["Vinoth"]
  gem.email         = ["a.vinothk@outlook.com"]
  gem.description   = %q{Omniauth strategy for Moviepass oAuth2 API}
  gem.summary       = %q{Omniauth strategy for Moviepass oAuth2 API}
  gem.homepage      = "https://github.com/realimage/omniauth-moviepass"

  gem.files         = [
                        "Gemfile",
                        "README.md",
                        "Rakefile",
                        "LICENSE",
                        "lib/omniauth/moviepass/version.rb",
                        "lib/omniauth/strategies/moviepass.rb",
                        "lib/omniauth-moviepass.rb",
                        "omniauth-moviepass.gemspec"
                      ]

  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'omniauth', '>= 1.0'
  gem.add_runtime_dependency 'omniauth-oauth2', '>= 1.0'
end
