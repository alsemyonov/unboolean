# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unboolean/version'

Gem::Specification.new do |spec|
  spec.name          = 'unboolean'
  spec.version       = Unboolean::VERSION
  spec.authors       = ['Alexander Semyonov']
  spec.email         = %w(al@semyonov.us)
  spec.description   = %q{Boolean is too boring. Let’s add Maybe value.}
  spec.summary       = %q{True, false, or Maybe?}
  spec.homepage      = 'https://github.com/alsemyonov/unboolean'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
