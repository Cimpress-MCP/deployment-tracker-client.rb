module DeploymentTrackerClient
  # 
  class LogMessage < BaseObject
    attr_accessor :message
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The message to log
        :'message' => :'message'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'message' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'message']
        @message = attributes[:'message']
      end
      
    end
  end
end
