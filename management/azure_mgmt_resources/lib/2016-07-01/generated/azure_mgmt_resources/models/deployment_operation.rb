# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources::Api_2016_07_01
  module Models
    #
    # Deployment operation information.
    #
    class DeploymentOperation

      include MsRestAzure

      # @return [String] Full deployment operation id.
      attr_accessor :id

      # @return [String] Deployment operation id.
      attr_accessor :operation_id

      # @return [DeploymentOperationProperties] Deployment properties.
      attr_accessor :properties


      #
      # Mapper for DeploymentOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeploymentOperation',
          type: {
            name: 'Composite',
            class_name: 'DeploymentOperation',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              operation_id: {
                required: false,
                serialized_name: 'operationId',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentOperationProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
