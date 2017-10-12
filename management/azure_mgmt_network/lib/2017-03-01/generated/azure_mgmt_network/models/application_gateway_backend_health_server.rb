# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_03_01
  module Models
    #
    # Application gateway backendhealth http settings.
    #
    class ApplicationGatewayBackendHealthServer

      include MsRestAzure

      # @return [String] IP address or FQDN of backend server.
      attr_accessor :address

      # @return [SubResource] Reference of IP configuration of backend server.
      attr_accessor :ip_configuration

      # @return [ApplicationGatewayBackendHealthServerHealth] Health of backend
      # server. Possible values include: 'Unknown', 'Up', 'Down', 'Partial',
      # 'Draining'
      attr_accessor :health


      #
      # Mapper for ApplicationGatewayBackendHealthServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayBackendHealthServer',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHealthServer',
            model_properties: {
              address: {
                required: false,
                serialized_name: 'address',
                type: {
                  name: 'String'
                }
              },
              ip_configuration: {
                required: false,
                serialized_name: 'ipConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              health: {
                required: false,
                serialized_name: 'health',
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
