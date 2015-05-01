# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dependent2/version'

Gem::Specification.new do |spec|
  spec.name          = "dependent2"
  spec.version       = Dependent2::VERSION
  spec.authors       = ["Watanabe, Mitsutoshi"]
  spec.email         = ["mitsutoshi@reivo.co.jp"]
  spec.summary       = %q{gem dependency test.}
  spec.description   = %q{gem dependency test.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "dependent1", "0.0.2"
end
