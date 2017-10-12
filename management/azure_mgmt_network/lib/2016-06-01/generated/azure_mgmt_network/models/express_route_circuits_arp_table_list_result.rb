# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_06_01
  module Models
    #
    # Response for ListArpTable associated with the Express Route Circuits Api
    #
    class ExpressRouteCircuitsArpTableListResult

      include MsRestAzure

      # @return [Array<ExpressRouteCircuitArpTable>] Gets List of ArpTable
      attr_accessor :value

      # @return [String] Gets the URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ExpressRouteCircuitsArpTableListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitsArpTableListResult',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitsArpTableListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExpressRouteCircuitArpTableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitArpTable'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
