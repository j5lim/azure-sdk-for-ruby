# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_12_01
  module Models
    #
    # The information about security rules applied to the specified VM.
    #
    class SecurityGroupViewResult

      include MsRestAzure

      # @return [Array<SecurityGroupNetworkInterface>] List of network
      # interfaces on the specified VM.
      attr_accessor :network_interfaces


      #
      # Mapper for SecurityGroupViewResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SecurityGroupViewResult',
          type: {
            name: 'Composite',
            class_name: 'SecurityGroupViewResult',
            model_properties: {
              network_interfaces: {
                required: false,
                serialized_name: 'networkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SecurityGroupNetworkInterfaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityGroupNetworkInterface'
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
