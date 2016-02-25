# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_debug/gem_version'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods_debug'
  spec.version       = CocoapodsDebug::VERSION
  spec.authors       = ['Samuel Giddins']
  spec.email         = ['segiddins@segiddins.me']
  spec.summary       = 'A simple plugin to ease debugging CocoaPods.'
  spec.homepage      = 'https://github.com/segiddins/cocoapods_debug'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency     'pry',     '0.10.3'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
