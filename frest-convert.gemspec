# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frest/convert/version'

Gem::Specification.new do |spec|
  spec.name          = "frest-convert"
  spec.version       = Frest::Convert::VERSION
  spec.authors       = ["Guyren Howe"]
  spec.email         = ["guyren@relevantlogic.com"]

  spec.summary       = %q{Type conversions for the FREST project.}
  spec.homepage      = "http://github.com/gisborne/frest-convert"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
