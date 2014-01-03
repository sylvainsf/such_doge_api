# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'such_doge_api/version'

Gem::Specification.new do |spec|
  spec.name          = "such_doge_api"
  spec.version       = SuchDogeApi::VERSION
  spec.authors       = ["Sylvain Niles"]
  spec.email         = ["sylvain.niles@gmail.com"]
  spec.description   = %q{A gem for using dogeapi.com}
  spec.summary       = %q{A gem for using dogeapi.com}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
