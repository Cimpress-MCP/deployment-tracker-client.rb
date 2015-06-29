module DeploymentTrackerClient
  # 
  class ObjectResponse < BaseObject
    attr_accessor :message
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'message' => :'message'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'message' => :'object'
        
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
