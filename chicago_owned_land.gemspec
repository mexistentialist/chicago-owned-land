# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chicago_owned_land/version'

Gem::Specification.new do |spec|
  spec.name          = "chicago_owned_land"
  spec.version       = ChicagoOwnedLand::VERSION
  spec.authors       = ["Salvador Munoz"]
  spec.email         = ["munoz.sal3@gmail.com"]

  spec.summary       = %q{This is a wrapper for the City of Chicago owned land API.}
  spec.description   = %q{Allows you to access information on land the City of Chicago owns which is pulled from their API }
  spec.homepage      = "http://mexistentialist.github.io/blog/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "unirest", "~>1.1.2"


end
