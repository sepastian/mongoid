# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "mongoid/version"

Gem::Specification.new do |s|
  s.name        = "mongoid-rails4"
  s.version     = Mongoid::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sebastian Gassner"]
  s.email       = ["sebastian.gassner@gmail.com"]
  s.homepage    = "https://github.com/sepastian/mongoid"
  s.summary     = %q{A versioned release of the mongoid master branch supporting Rails 4.}
  s.license     = "MIT"

  s.required_ruby_version     = ">= 1.9"
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "mongoid-rails4"

  s.add_dependency("activemodel", ["~> 4.0.0"])
  s.add_dependency("tzinfo", ["~> 0.3.37"])
  s.add_dependency("moped", ["~> 2.0.beta"])
  s.add_dependency("origin", ["~> 1.0"])

  s.files        = Dir.glob("lib/**/*") + %w(CHANGELOG.md LICENSE README.md Rakefile)
  s.test_files   = Dir.glob("spec/**/*")
  s.require_path = 'lib'
end
