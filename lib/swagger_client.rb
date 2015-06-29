# Swagger common files
require_relative 'swagger_client/monkey'
require_relative 'swagger_client/swagger'
require_relative 'swagger_client/swagger/configuration'
require_relative 'swagger_client/swagger/request'
require_relative 'swagger_client/swagger/response'
require_relative 'swagger_client/swagger/version'

module SwaggerClient
  # Initialize the default configuration
  Swagger.configuration ||= Swagger::Configuration.new
end
