# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/jaspec/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-jaspec"
  spec.version       = Guard::JaspecVersion::VERSION
  spec.authors       = ["Kevin Gisi"]
  spec.email         = ["kevin@kevingisi.com"]
  spec.summary       = %q{Guard plugin for Jaspec}
  spec.homepage      = "https://github.com/gisikw/guard-jaspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'guard',  '~> 2.0'
  spec.add_runtime_dependency 'jaspec', '~> 0.2'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

end
