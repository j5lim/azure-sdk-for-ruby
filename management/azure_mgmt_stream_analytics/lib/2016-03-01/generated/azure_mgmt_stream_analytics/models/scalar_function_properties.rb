# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics::Api_2016_03_01
  module Models
    #
    # The properties that are associated with a scalar function.
    #
    class ScalarFunctionProperties < FunctionProperties

      include MsRestAzure


      def initialize
        @type = "Scalar"
      end

      attr_accessor :type

      # @return [Array<FunctionInput>] A list of inputs describing the
      # parameters of the function.
      attr_accessor :inputs

      # @return [FunctionOutput] The output of the function.
      attr_accessor :output

      # @return [FunctionBinding] The physical binding of the function. For
      # example, in the Azure Machine Learning web service’s case, this
      # describes the endpoint.
      attr_accessor :binding


      #
      # Mapper for ScalarFunctionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Scalar',
          type: {
            name: 'Composite',
            class_name: 'ScalarFunctionProperties',
            model_properties: {
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              inputs: {
                required: false,
                serialized_name: 'properties.inputs',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'FunctionInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FunctionInput'
                      }
                  }
                }
              },
              output: {
                required: false,
                serialized_name: 'properties.output',
                type: {
                  name: 'Composite',
                  class_name: 'FunctionOutput'
                }
              },
              binding: {
                required: false,
                serialized_name: 'properties.binding',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'FunctionBinding',
                  class_name: 'FunctionBinding'
                }
              }
            }
          }
        }
      end
    end
  end
end
