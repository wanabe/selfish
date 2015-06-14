# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selfish/version'

Gem::Specification.new do |spec|
  spec.name          = "selfish"
  spec.version       = Selfish::VERSION
  spec.authors       = ["wanabe"]
  spec.email         = ["s.wanabe@gmail.com"]

  spec.summary       = %q{SELF In ShortHand}
  spec.description   = %q{Set block first parameter to self, and make self short-hand (_ or s)}
  spec.homepage      = "http://github.cim/wanabe"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
