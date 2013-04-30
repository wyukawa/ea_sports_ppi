# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ea_sports_ppi/version'

Gem::Specification.new do |spec|
  spec.name          = "ea_sports_ppi"
  spec.version       = EaSportsPpi::VERSION
  spec.authors       = ["wyukawa"]
  spec.email         = ["wyukawa@gmail.com"]
  spec.description   = %q{show EA SPORTS PLAYER PERFORMANCE INDEX}
  spec.summary       = %q{show EA SPORTS PLAYER PERFORMANCE INDEX}
  spec.homepage      = "https://github.com/wyukawa/ea_sports_ppi"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "nokogiri"
end
