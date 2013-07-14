# -*- coding: utf-8; mode: ruby  -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'alternating_series/version'

Gem::Specification.new do |gem|
  gem.name          = "alternating_series"
  gem.version       = AlternatingSeries::VERSION
  gem.authors       = ["Conan Dalton"]
  gem.email         = ["conan@conandalton.net"]
  gem.description   = %q{a macro to generate methods to repeatedly return the next value in an array of given values}
  gem.summary       = %q{Given "series :foo, %w{x y z}", will generate a method #foo. Calls to #foo will return "x", "y", "z", "x", "y", "z", "x" and so on. This macro originated as a #rowclass method for generating css classes 'evenrow' and 'oddrow' on alternate invocations. Who remembers the days before :nth-child(2n+1) now? }
  gem.homepage      = "https://github.com/conanite/alternating_series"

  gem.add_development_dependency 'rspec', '~> 2.9'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
