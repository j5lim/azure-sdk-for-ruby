# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2015_06_15
  module Models
    #
    # The routes table associated with the ExpressRouteCircuit
    #
    class ExpressRouteCircuitRoutesTable

      include MsRestAzure

      # @return [String] Gets AddressPrefix.
      attr_accessor :address_prefix

      # @return [RouteNextHopType] Gets NextHopType. Possible values include:
      # 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance',
      # 'None'
      attr_accessor :next_hop_type

      # @return [String] Gets NextHopIP.
      attr_accessor :next_hop_ip

      # @return [String] Gets AsPath.
      attr_accessor :as_path


      #
      # Mapper for ExpressRouteCircuitRoutesTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitRoutesTable',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitRoutesTable',
            model_properties: {
              address_prefix: {
                required: false,
                serialized_name: 'addressPrefix',
                type: {
                  name: 'String'
                }
              },
              next_hop_type: {
                required: true,
                serialized_name: 'nextHopType',
                type: {
                  name: 'String'
                }
              },
              next_hop_ip: {
                required: false,
                serialized_name: 'nextHopIP',
                type: {
                  name: 'String'
                }
              },
              as_path: {
                required: false,
                serialized_name: 'asPath',
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
