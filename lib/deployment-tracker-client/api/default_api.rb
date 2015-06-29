require "uri"

module DeploymentTrackerClient
  class DefaultApi
    basePath = "http://localhost:8080/"
    # apiInvoker = APIInvoker

    # 
    # Return the current application configuration
    # @param [Hash] opts the optional parameters
    # @return [ObjectResponse]
    def self.config(opts = {})
      

      # resource path
      path = "/config".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response =SwaggerClient::Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = ObjectResponse.new() and obj.build_from_hash(response)
    end

    # 
    # Run a health check and return the test results
    # @param [Hash] opts the optional parameters
    # @return [ObjectResponse]
    def self.healthcheck(opts = {})
      

      # resource path
      path = "/healthcheck".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response =SwaggerClient::Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = ObjectResponse.new() and obj.build_from_hash(response)
    end

    # 
    # Get the list of most recently completed deployments
    # @param offset Which result to start with
    # @param limit Number of results to return
    # @param [Hash] opts the optional parameters
    # @return [array[Deployment]]
    def self.get_deployments(offset, limit, opts = {})
      
      # verify the required parameter 'offset' is set
      raise "Missing the required parameter 'offset' when calling get_deployments" if offset.nil?
      
      # verify the required parameter 'limit' is set
      raise "Missing the required parameter 'limit' when calling get_deployments" if limit.nil?
      

      # resource path
      path = "/v1/deployments".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = offset
      query_params[:'limit'] = limit

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response =SwaggerClient::Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = Deployment.new() and obj.build_from_hash(response) }
    end

    # 
    # Get a deployment
    # @param id Unique Identifier (UUID) of the deployment to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Deployment]
    def self.get_deployment(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_deployment" if id.nil?
      

      # resource path
      path = "/v1/deployments/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response =SwaggerClient::Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Deployment.new() and obj.build_from_hash(response)
    end

    # 
    # Record the completion of a new deployment
    # @param id Unique Identifier (UUID) of the deployment that has completed
    # @param body The Deployment object to be updated
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.put_deployment(id, body, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling put_deployment" if id.nil?
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling put_deployment" if body.nil?
      

      # resource path
      path = "/v1/deployments/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body =SwaggerClient::Swagger::Request.object_to_http_body(body)
      

      auth_names = []
     SwaggerClient::Swagger::Request.new(:PUT, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # 
    # Record the start of a new deployment
    # @param id Unique Identifier (UUID) of the deployment that is starting
    # @param body The Deployment object to be created
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.post_deployment(id, body, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling post_deployment" if id.nil?
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling post_deployment" if body.nil?
      

      # resource path
      path = "/v1/deployments/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body =SwaggerClient::Swagger::Request.object_to_http_body(body)
      

      auth_names = []
     SwaggerClient::Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # 
    # Record a log message associated with a deployment
    # @param id Unique Identifier (UUID) of the deployment that is starting
    # @param body The log message to be recorded
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.post_logs(id, body, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling post_logs" if id.nil?
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling post_logs" if body.nil?
      

      # resource path
      path = "/v1/deployments/{id}/logs".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body =SwaggerClient::Swagger::Request.object_to_http_body(body)
      

      auth_names = []
     SwaggerClient::Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # 
    # Record the completion of a deployment to a server
    # @param id Unique Identifier (UUID) of the deployment that has completed
    # @param body The server on which the deployment has completed
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.put_server(id, body, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling put_server" if id.nil?
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling put_server" if body.nil?
      

      # resource path
      path = "/v1/deployments/{id}/servers".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body =SwaggerClient::Swagger::Request.object_to_http_body(body)
      

      auth_names = []
     SwaggerClient::Swagger::Request.new(:PUT, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # 
    # Record the start of a deployment to a server
    # @param id Unique Identifier (UUID) of the deployment that is starting
    # @param body The server on which the deployment is starting
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.post_server(id, body, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling post_server" if id.nil?
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling post_server" if body.nil?
      

      # resource path
      path = "/v1/deployments/{id}/servers".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body =SwaggerClient::Swagger::Request.object_to_http_body(body)
      

      auth_names = []
     SwaggerClient::Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # 
    # Return a list of all servers that have been deployed to
    # @param offset Which result to start with
    # @param limit Number of results to return
    # @param [Hash] opts the optional parameters
    # @return [array[string]]
    def self.get_all_servers(offset, limit, opts = {})
      
      # verify the required parameter 'offset' is set
      raise "Missing the required parameter 'offset' when calling get_all_servers" if offset.nil?
      
      # verify the required parameter 'limit' is set
      raise "Missing the required parameter 'limit' when calling get_all_servers" if limit.nil?
      

      # resource path
      path = "/v1/servers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = offset
      query_params[:'limit'] = limit

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response =SwaggerClient::Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = string.new() and obj.build_from_hash(response) }
    end

    # 
    # Return a list of all servers that have been deployed to
    # @param hostname The hostname for the server
    # @param offset Which result to start with
    # @param limit Number of results to return
    # @param [Hash] opts the optional parameters
    # @return [array[Server]]
    def self.get_server_by_hostname(hostname, offset, limit, opts = {})
      
      # verify the required parameter 'hostname' is set
      raise "Missing the required parameter 'hostname' when calling get_server_by_hostname" if hostname.nil?
      
      # verify the required parameter 'offset' is set
      raise "Missing the required parameter 'offset' when calling get_server_by_hostname" if offset.nil?
      
      # verify the required parameter 'limit' is set
      raise "Missing the required parameter 'limit' when calling get_server_by_hostname" if limit.nil?
      

      # resource path
      path = "/v1/servers/{hostname}".sub('{format}','json').sub('{' + 'hostname' + '}', hostname.to_s)

      # query parameters
      query_params = {}
      query_params[:'offset'] = offset
      query_params[:'limit'] = limit

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result =SwaggerClient::Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] =SwaggerClient::Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response =SwaggerClient::Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = Server.new() and obj.build_from_hash(response) }
    end
  end
end
