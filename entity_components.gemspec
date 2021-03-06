# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'entity_components/version'

Gem::Specification.new do |spec|
  spec.name          = "entity_components"
  spec.version       = EntityComponents::VERSION
  spec.authors       = ["Tinco Andringa"]
  spec.email         = ["mail@tinco.nl"]

  spec.summary       = %q{Simple components for entities in Rails}
  spec.description   = %q{Simple components for entities in Rails}
  spec.homepage      = "https://github.com/tinco/rails-entity-components"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 4.0.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
