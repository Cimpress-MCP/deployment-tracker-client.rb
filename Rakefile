require "bundler/gem_tasks"
require "rubocop/rake_task"
require "rake/clean"

CLEAN.include("lib/deployment-tracker-client/api", "lib/deployment-tracker-client/models", "lib/swagger_client", "lib/swagger_client.rb")

task default: :build

desc "Generate swagger codegen code"
task :gen do
  unless ENV.key?("SWAGGER_CODEGEN_JAR") && File.exist?(ENV["SWAGGER_CODEGEN_JAR"])
    fail "Unable to locate SWAGGER_CODEGEN_JAR at #{ENV['SWAGGER_CODEGEN_JAR']}. \
Build it from https://github.com/swagger-api/swagger-codegen and set the SWAGGER_CODEGEN_JAR environment variable."
  end
  system("java -jar #{ENV['SWAGGER_CODEGEN_JAR']} generate -i http://127.0.0.1:8080 -l ruby -o . -c codegen_conf.json")

  # Delete the swagger_client.gemspec, we don't need it
  File.delete("swagger_client.gemspec")

  %w(api models).each do |dir|
    # Copy folder into the deployment-tracker-client directory
    FileUtils.mv("./lib/swagger_client/#{dir}", "./lib/deployment-tracker-client/#{dir}", force: true)
    Dir.foreach("./lib/deployment-tracker-client/#{dir}")	do |file|
      file = File.join("./lib/deployment-tracker-client/#{dir}", file)
      next unless File.file?(file)
      contents = File.read(file)
      contents.gsub!("module SwaggerClient", "module DeploymentTrackerClient")
      contents.gsub!(" Swagger::", "SwaggerClient::Swagger::")
      contents.gsub!("SwaggerClient.const_get", "DeploymentTrackerClient.const_get")
      File.open(file, "w") do |f|
        f.write(contents)
      end
    end
  end

  # Needs to be require_relative
  contents = File.read("./lib/swagger_client.rb")
  contents.gsub!("require ", "require_relative ")
  contents.gsub!(/# Models.*?module SwaggerClient/m, "module SwaggerClient")
  File.open("./lib/swagger_client.rb", "w") do |f|
    f.write(contents)
  end

  # Remove empty case statement.
  contents = File.read("./lib/swagger_client/swagger/request.rb")
  contents.gsub!(/case auth_name.*?end/m, "")
  File.open("./lib/swagger_client/swagger/request.rb", "w") do |f|
    f.write(contents)
  end
end
