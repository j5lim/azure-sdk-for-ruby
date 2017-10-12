# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # Properties of an artifact parameter.
    #
    class ArtifactParameterProperties

      include MsRestAzure

      # @return [String] The name of the artifact parameter.
      attr_accessor :name

      # @return [String] The value of the artifact parameter.
      attr_accessor :value


      #
      # Mapper for ArtifactParameterProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ArtifactParameterProperties',
          type: {
            name: 'Composite',
            class_name: 'ArtifactParameterProperties',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
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
