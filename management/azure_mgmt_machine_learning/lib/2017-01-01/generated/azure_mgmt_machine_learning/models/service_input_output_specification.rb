# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::Api_2017_01_01
  module Models
    #
    # The swagger 2.0 schema describing the service's inputs or outputs. See
    # Swagger specification: http://swagger.io/specification/
    #
    class ServiceInputOutputSpecification

      include MsRestAzure

      # @return [String] The title of your Swagger schema.
      attr_accessor :title

      # @return [String] The description of the Swagger schema.
      attr_accessor :description

      # @return [String] The type of the entity described in swagger. Always
      # 'object'. Default value: 'object' .
      attr_accessor :type

      # @return [Hash{String => TableSpecification}] Specifies a collection
      # that contains the column schema for each input or output of the web
      # service. For more information, see the Swagger specification.
      attr_accessor :properties


      #
      # Mapper for ServiceInputOutputSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceInputOutputSpecification',
          type: {
            name: 'Composite',
            class_name: 'ServiceInputOutputSpecification',
            model_properties: {
              title: {
                required: false,
                serialized_name: 'title',
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
              },
              type: {
                required: true,
                serialized_name: 'type',
                default_value: 'object',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'TableSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TableSpecification'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
