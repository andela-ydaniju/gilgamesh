# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "algernon/version"

Gem::Specification.new do |spec|
  spec.name          = "algernon"
  spec.version       = Algernon::VERSION
  spec.authors       = ["andela-ydaniju"]
  spec.email         = ["yusuf.daniju@andela.com"]

  spec.summary       = "Algernon is a mini MVC framework built on Ruby."
  spec.description   = "Algernon is a mini MVC framework built on Ruby."
  spec.homepage      = "https://github.com/andela-ydaniju/algernon."
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against"\
    "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rack-test", "~> 0.6"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "poltergeist"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "rack", "~> 1.6.4"
  spec.add_runtime_dependency "erubis", "~> 2.7.0"
  spec.add_runtime_dependency "tilt", "~> 2.0.2"
  spec.add_runtime_dependency "sqlite3", "~> 1.3.11"
  spec.add_runtime_dependency "activesupport", "~> 4.2.6"
end
