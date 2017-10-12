# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # The API entity reference.
    #
    class ApiEntityReference

      include MsRestAzure

      # @return [String] The ARM resource id in the form of
      # /subscriptions/{SubcriptionId}/resourceGroups/{ResourceGroupName}/...
      attr_accessor :id


      #
      # Mapper for ApiEntityReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiEntityReference',
          type: {
            name: 'Composite',
            class_name: 'ApiEntityReference',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
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
