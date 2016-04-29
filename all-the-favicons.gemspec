# encoding: utf-8

$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "all_the_favicons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "all-the-favicons"
  s.version     = AllTheFavicons::VERSION
  s.authors     = ["Inge Jørgensen"]
  s.email       = ["inge@kord.no"]
  s.homepage    = "https://github.com/kord-as/all-the-favicons"
  s.summary     = "Favicons for the Rails assets pipeline"
  s.description = "A Rails engine that outputs favicons through the assets " \
                  "pipeline"
  s.license     = "MIT"

  s.files = Dir[
    "{app,config,db,lib}/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md"
  ]

  s.required_ruby_version = ">= 1.9.2"

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "vector2d", "~> 2.2", ">= 2.2.1"
end
