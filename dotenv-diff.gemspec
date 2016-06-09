# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotenv/diff/version'

Gem::Specification.new do |spec|
  spec.name          = "dotenv-diff"
  spec.version       = Dotenv::Diff::VERSION
  spec.authors       = ["toshiwo"]
  spec.email         = ["toshiwo@toshiwo.com"]

  spec.summary       = %q{Checks the differences between dotenv files}
  spec.description   = %q{Checks the differences between dotenv files}
  spec.homepage      = "https://github.com/toshiwo/dotenv-diff"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "dotenv", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
