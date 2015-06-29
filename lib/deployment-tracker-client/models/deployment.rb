module DeploymentTrackerClient
  # 
  class Deployment < BaseObject
    attr_accessor :deployment_id, :engine, :engine_version, :host, :user, :environment, :package, :version, :result, :elapsed_seconds, :servers
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier of a deployment. UUID
        :'deployment_id' => :'deployment_id',
        
        # The execution engine of the deployment
        :'engine' => :'engine',
        
        # The version of the execution engine
        :'engine_version' => :'engine_version',
        
        # The host from which the deployment is being executed
        :'host' => :'host',
        
        # The user executing the deploymetn
        :'user' => :'user',
        
        # The target environment of the deployment
        :'environment' => :'environment',
        
        # The name of the software application or service being deployed
        :'package' => :'package',
        
        # The version of the package being deployed
        :'version' => :'version',
        
        # The result of running the deployment
        :'result' => :'result',
        
        # The elapsed time of the deployment, in seconds
        :'elapsed_seconds' => :'elapsed_seconds',
        
        # The servers that participated in the deployment
        :'servers' => :'servers'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'deployment_id' => :'string',
        :'engine' => :'string',
        :'engine_version' => :'string',
        :'host' => :'string',
        :'user' => :'string',
        :'environment' => :'string',
        :'package' => :'string',
        :'version' => :'string',
        :'result' => :'string',
        :'elapsed_seconds' => :'int',
        :'servers' => :'array[Server]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'deployment_id']
        @deployment_id = attributes[:'deployment_id']
      end
      
      if attributes[:'engine']
        @engine = attributes[:'engine']
      end
      
      if attributes[:'engine_version']
        @engine_version = attributes[:'engine_version']
      end
      
      if attributes[:'host']
        @host = attributes[:'host']
      end
      
      if attributes[:'user']
        @user = attributes[:'user']
      end
      
      if attributes[:'environment']
        @environment = attributes[:'environment']
      end
      
      if attributes[:'package']
        @package = attributes[:'package']
      end
      
      if attributes[:'version']
        @version = attributes[:'version']
      end
      
      if attributes[:'result']
        @result = attributes[:'result']
      end
      
      if attributes[:'elapsed_seconds']
        @elapsed_seconds = attributes[:'elapsed_seconds']
      end
      
      if attributes[:'servers']
        if (value = attributes[:'servers']).is_a?(Array)
          @servers = value
        end
      end
      
    end
  end
end
