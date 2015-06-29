module DeploymentTrackerClient
  # 
  class Server < BaseObject
    attr_accessor :deployment_id, :hostname, :ip_address, :result, :elapsed_seconds
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique Identifier (UUID) of the deployment starting
        :'deployment_id' => :'deployment_id',
        
        # Fully qualified domain name of the server
        :'hostname' => :'hostname',
        
        # IP Address of the server
        :'ip_address' => :'ip_address',
        
        # The result of running the deployment on the server
        :'result' => :'result',
        
        # The elapsed time of the deployment, in seconds
        :'elapsed_seconds' => :'elapsed_seconds'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'deployment_id' => :'string',
        :'hostname' => :'string',
        :'ip_address' => :'string',
        :'result' => :'string',
        :'elapsed_seconds' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'deployment_id']
        @deployment_id = attributes[:'deployment_id']
      end
      
      if attributes[:'hostname']
        @hostname = attributes[:'hostname']
      end
      
      if attributes[:'ip_address']
        @ip_address = attributes[:'ip_address']
      end
      
      if attributes[:'result']
        @result = attributes[:'result']
      end
      
      if attributes[:'elapsed_seconds']
        @elapsed_seconds = attributes[:'elapsed_seconds']
      end
      
    end
  end
end
