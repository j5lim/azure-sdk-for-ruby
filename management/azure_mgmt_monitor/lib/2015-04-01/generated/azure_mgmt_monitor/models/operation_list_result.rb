# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor::Api_2015_04_01
  module Models
    #
    # Result of the request to list Microsoft.Insights operations. It contains
    # a list of operations and a URL link to get the next set of results.
    #
    class OperationListResult

      include MsRestAzure

      # @return [Array<Operation>] List of operations supported by the
      # Microsoft.Insights provider.
      attr_accessor :value

      # @return [String] URL to get the next set of operation list results if
      # there are any.
      attr_accessor :next_link


      #
      # Mapper for OperationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationListResult',
          type: {
            name: 'Composite',
            class_name: 'OperationListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OperationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Operation'
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
