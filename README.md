# deployment-tracker-client.rb

Ruby API Client for [deployment-tracker](https://github.com/Cimpress-MCP/deployment-tracker)

This repo will run swagger code generation on an instance of the deployment-tracker running
locally and then transform the code a bit to make it readily distributable as a gem. There
appear to be a number of bugs in the swagger codegen ruby generator that have been plastered
over with a bunch of ugly `gsub!`s in the Rakefile.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'deployment-tracker-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deployment-tracker-client

## Usage

```ruby
require "deployment-tracker-client"
require "SecureRandom"
require "pp"

SwaggerClient::Swagger.configure do |config|
  config.host = "http://127.0.0.1:8080"
end

api = DeploymentTrackerClient::DefaultApi
pp api.get_deployments(0, 3) # Print the 3 most recent deployments

id = SecureRandom.uuid
host = `hostname`.chomp
user = `whoami`.chomp
deployment = DeploymentTrackerClient::Deployment.new({
    deployment_id: id,
    engine: "deployment_tracker_test_suite",
    engine_version: DeploymentTrackerClient::VERSION,
    user: user,
    host: host,
    environment: "dev",
    package: "my_package",
    version: "1.2.3"
  })
puts "POSTING DEPLOYMENT #{id}"
api.post_deployment id, deployment
pp api.get_deployment id
```

## Vesioning
This ruby client library major.minor version will be API compatible with the
same major, minor pair of the deployment-tracker service. Older clients will
remain backward compatible within major releases, but aren't guaranteed to be
forward compatible. This means that the 0.6.x version of this library should work
with any version of the service greater than 0.6 but less than 1.0

## Contributing

1. Fork it ( https://github.com/Cimpress-MCP/deployment-tracker-client.rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
 
