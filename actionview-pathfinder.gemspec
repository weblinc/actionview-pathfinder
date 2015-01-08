# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'actionview/pathfinder/version'

Gem::Specification.new do |spec|
  spec.name          = "actionview-pathfinder"
  spec.version       = Actionview::Pathfinder::VERSION
  spec.authors       = ["Matt Duffy"]
  spec.email         = ["mduffy@weblinc.com"]
  spec.summary       = "Outputs html comment with file path to partials in views"
  spec.description   = "Outputs html comment with file path to partials in views"
  spec.homepage      = "http://github.com/mttdffy/actionview-pathfinder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "actionview", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
