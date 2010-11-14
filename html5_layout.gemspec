# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "html5_layout/version"

Gem::Specification.new do |s|
  s.name        = "html5_layout"
  s.version     = Html5Layout::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Millisami"]
  s.email       = ["millisami@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/html5_layout_generator"
  s.summary     = %q{Rails layout generator based upon the HTML5 Boilerplate Layout}
  s.description = %q{Generates HTML5 Boilerplate layout for Rails 3 app}

  s.rubyforge_project = "html5_layout"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('rails',        '~> 3.0.1')
  s.add_dependency('cucumber',        '~> 0.9.4')
  s.add_dependency('rspec',           '~> 2.0.1')
  s.add_dependency('bundler',         '~> 1.0.2')
end
