lib = File.expand_path("../../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "deployment-tracker-client"
require "SecureRandom"
require "pp"

SwaggerClient::Swagger.configure do |config|
  config.host = "http://127.0.0.1:8080"
end

api = DeploymentTrackerClient::DefaultApi
pp api.get_deployments(0, 3)

id = SecureRandom.uuid
host = `hostname`.chomp
user = `whoami`.chomp
deployment = DeploymentTrackerClient::Deployment.new(deployment_id: id,
                                                     engine: "deployment_tracker_test_suite",
                                                     engine_version: DeploymentTrackerClient::VERSION,
                                                     user: user,
                                                     host: host,
                                                     environment: "dev",
                                                     package: "my_package",
                                                     version: "1.2.3")
puts "POSTING DEPLOYMENT #{id}"
api.post_deployment id, deployment
pp api.get_deployment id
