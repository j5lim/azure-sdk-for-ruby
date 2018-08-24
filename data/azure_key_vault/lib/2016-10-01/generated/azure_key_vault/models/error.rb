# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2016_10_01
  module Models
    #
    # The key vault server error.
    #
    class Error

      include MsRestAzure

      # @return [String] The error code.
      attr_accessor :code

      # @return [String] The error message.
      attr_accessor :message

      # @return [Error]
      attr_accessor :inner_error


      #
      # Mapper for Error class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Error',
          type: {
            name: 'Composite',
            class_name: 'Error',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              inner_error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'innererror',
                type: {
                  name: 'Composite',
                  class_name: 'Error'
                }
              }
            }
          }
        }
      end
    end
  end
end
