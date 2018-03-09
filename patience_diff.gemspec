# frozen_string_literal: true
# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'patience_diff/version'

Gem::Specification.new do |spec|
  spec.name          = 'patience_diff'
  spec.version       = PatienceDiff::VERSION
  spec.authors       = ['Andrew Watt']
  spec.email         = ['andrew@watt.coffee']

  spec.summary       = 'Ruby implementation of the Patience Diff algorithm.'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  unless spec.respond_to?(:metadata)
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end
  spec.metadata['allowed_push_host'] = 'Pushing is not allowed'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']
  spec.executables = ['patience_diff']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'trollop', '~> 2.1'
end