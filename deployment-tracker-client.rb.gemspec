# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "deployment-tracker-client/version"

Gem::Specification.new do |spec|
  spec.name          = "deployment-tracker-client"
  spec.version       = DeploymentTrackerClient::VERSION
  spec.authors       = ["Cimpress MCP Infrastructure"]
  spec.email         = ["mcp_infrastructure@cimpress.com"]
  spec.summary       = "Ruby API client for deployment-tracker"
  spec.homepage      = "https://github.com/Cimpress-MCP/deployment-tracker-client.rb"
  spec.license       = "Apache 2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # These were stolen from the swagger_client generated gemspec
  spec.add_runtime_dependency "typhoeus", "~> 0.2", ">= 0.2.1"
  spec.add_runtime_dependency "addressable", "~> 2.2", ">= 2.2.4"
  spec.add_runtime_dependency "json", "~> 1.4", ">= 1.4.6"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
