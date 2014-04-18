# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'suning_json/version'

Gem::Specification.new do |spec|
  spec.name          = "suning_json"
  spec.version       = SuningJson::VERSION
  spec.authors       = ["Lion"]
  spec.email         = ["815694355@qq.com"]
  spec.summary       = %q{SuNing Interface}
  spec.description   = %q{SuNing Interface for member information with JSON return}
  spec.homepage      = ""
  spec.license       = "Secrect"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
