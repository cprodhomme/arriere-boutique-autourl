require_relative "lib/arriere/boutique/autourl/version"

Gem::Specification.new do |spec|
  spec.name        = "arriere-boutique-autourl"
  spec.version     = Arriere::Boutique::Autourl::VERSION
  spec.authors     = ["Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://github.com/cprodhomme/arriere-boutique-autourl"
  spec.summary     = "link path helper for Rails application"
  spec.description = "Autourl is a gem that includes some helpers for you app when you want to make a generic page"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cprodhomme/arriere-boutique-autourl"
  # spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0"

  spec.add_development_dependency "rspec-rails"
end
