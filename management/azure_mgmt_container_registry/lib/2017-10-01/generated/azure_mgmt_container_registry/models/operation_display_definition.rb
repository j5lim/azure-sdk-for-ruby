# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_10_01
  module Models
    #
    # The display information for a container registry operation.
    #
    class OperationDisplayDefinition

      include MsRestAzure

      # @return [String] The resource provider name:
      # Microsoft.ContainerRegistry.
      attr_accessor :provider

      # @return [String] The resource on which the operation is performed.
      attr_accessor :resource

      # @return [String] The operation that users can perform.
      attr_accessor :operation

      # @return [String] The description for the operation.
      attr_accessor :description


      #
      # Mapper for OperationDisplayDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationDisplayDefinition',
          type: {
            name: 'Composite',
            class_name: 'OperationDisplayDefinition',
            model_properties: {
              provider: {
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
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
