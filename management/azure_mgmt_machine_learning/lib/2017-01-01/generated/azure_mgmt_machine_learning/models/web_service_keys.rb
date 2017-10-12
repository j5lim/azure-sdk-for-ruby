# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::Api_2017_01_01
  module Models
    #
    # Access keys for the web service calls.
    #
    class WebServiceKeys

      include MsRestAzure

      # @return [String] The primary access key.
      attr_accessor :primary

      # @return [String] The secondary access key.
      attr_accessor :secondary


      #
      # Mapper for WebServiceKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WebServiceKeys',
          type: {
            name: 'Composite',
            class_name: 'WebServiceKeys',
            model_properties: {
              primary: {
                required: false,
                serialized_name: 'primary',
                type: {
                  name: 'String'
                }
              },
              secondary: {
                required: false,
                serialized_name: 'secondary',
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
