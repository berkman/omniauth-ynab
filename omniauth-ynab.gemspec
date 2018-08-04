lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-ynab/version"

Gem::Specification.new do |gem|
  gem.add_dependency "oauth2",     "~> 1.1"
  gem.add_dependency "omniauth",   "~> 1.2"

  gem.add_development_dependency "bundler", "~> 1.0"

  gem.authors       = ["Mike Berkman"]
  gem.email         = ["mike@berkman.co"]
  gem.description   = "A YNAB OAuth2 strategy for OmniAuth."
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/berkman/omniauth-ynab"
  gem.licenses      = %w[MIT]

  gem.executables   = `git ls-files -- bin/*`.split("\n").collect { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-ynab"
  gem.require_paths = %w[lib]
  gem.version       = OmniAuth::Ynab::VERSION
end
