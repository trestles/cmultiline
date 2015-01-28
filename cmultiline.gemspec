# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cmultiline/version'

Gem::Specification.new do |spec|
  spec.name          = "cmultiline"
  spec.version       = Cmultiline::VERSION
  spec.authors       = ["jonathan byrne"]
  spec.email         = ["jon@arclocal.com"]
  spec.summary       = %q{takes content and removes c multiline-style comments  }
  spec.description   = %q{ takes content and removes c-style multline comments ie /* here is a comment */ }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end
