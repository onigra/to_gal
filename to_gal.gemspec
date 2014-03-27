# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_gal/version'

Gem::Specification.new do |spec|
  spec.name          = "to_gal"
  spec.version       = ToGal::VERSION
  spec.authors       = ["onigra"]
  spec.email         = ["3280467rec@gmail.com"]
  spec.summary       = %q{add String#to_gal}
  spec.description   = %q{replace to gal-moji}
  spec.homepage      = "https://github.com/onigra/to_gal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end