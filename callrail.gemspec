
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "callrail/version"

Gem::Specification.new do |spec|
  spec.name          = "callrail"
  spec.version       = Callrail::VERSION
  spec.authors       = ["Michael Hoskison"]
  spec.email         = ["mhoskison@etnainteractive.com"]

  spec.summary       = %q{Used to access the CallRail api}
  spec.description   = %q{CallRail API}
  spec.homepage      = "https://github.com/mhoskiso/callrail.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "rest-client", "~> 2.0.2"
  spec.add_dependency "json", "~> 2.6.3"
end
