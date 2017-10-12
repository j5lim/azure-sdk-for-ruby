# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_03_01
  module Models
    #
    # Application gateway BackendHealthHttp settings.
    #
    class ApplicationGatewayBackendHealthHttpSettings

      include MsRestAzure

      # @return [ApplicationGatewayBackendHttpSettings] Reference of an
      # ApplicationGatewayBackendHttpSettings resource.
      attr_accessor :backend_http_settings

      # @return [Array<ApplicationGatewayBackendHealthServer>] List of
      # ApplicationGatewayBackendHealthServer resources.
      attr_accessor :servers


      #
      # Mapper for ApplicationGatewayBackendHealthHttpSettings class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayBackendHealthHttpSettings',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHealthHttpSettings',
            model_properties: {
              backend_http_settings: {
                required: false,
                serialized_name: 'backendHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayBackendHttpSettings'
                }
              },
              servers: {
                required: false,
                serialized_name: 'servers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendHealthServerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendHealthServer'
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
