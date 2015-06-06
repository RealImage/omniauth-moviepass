# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-moviepass/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "omniauth-moviepass"
  gem.version       = Omniauth::Moviepass::VERSION
  gem.authors       = ["Vinoth"]
  gem.email         = ["a.vinothk@outlook.com"]
  gem.description   = %q{Omniauth strategy for Moviepass oAuth2 API}
  gem.summary       = %q{Omniauth strategy for Moviepass oAuth2 API}
  gem.homepage      = "https://github.com/realimage/omniauth-moviepass"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
end
