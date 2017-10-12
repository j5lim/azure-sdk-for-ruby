# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Relay::Api_2016_07_01
  module Models
    #
    # Parameters supplied to the Regenerate Authorization Rule operation.
    #
    class RegenerateKeysParameters

      include MsRestAzure

      # @return [PolicyKey] Key that needs to be regenerated. Possible values
      # include: 'PrimaryKey', 'SecondaryKey'
      attr_accessor :policy_key


      #
      # Mapper for RegenerateKeysParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegenerateKeysParameters',
          type: {
            name: 'Composite',
            class_name: 'RegenerateKeysParameters',
            model_properties: {
              policy_key: {
                required: false,
                serialized_name: 'policyKey',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
