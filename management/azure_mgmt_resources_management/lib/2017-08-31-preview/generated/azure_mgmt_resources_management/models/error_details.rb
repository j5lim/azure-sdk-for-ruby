# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ResourcesManagement::Api_2017_08_31_preview
  module Models
    #
    # The details of the error.
    #
    class ErrorDetails

      include MsRestAzure

      # @return [String] One of a server-defined set of error codes.
      attr_accessor :code

      # @return [String] A human-readable representation of the error.
      attr_accessor :message

      # @return [String] (Optional) The target of the error.
      attr_accessor :target


      #
      # Mapper for ErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetails',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                required: false,
                serialized_name: 'target',
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
