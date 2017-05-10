$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "geolocation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "geolocation"
  s.version     = Geolocation::VERSION
  s.authors     = ["Sigularusrex"]
  s.email       = ["djsigley@gmail.com"]
  #s.homepage    = ""
  s.summary     = "Summary of Geolocation."
  s.description = "Description of Geolocation."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.0"

  s.add_development_dependency "pg"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails", "~> 4.0"
end
