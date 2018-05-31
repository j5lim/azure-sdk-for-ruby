# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The response model for the list watcher operation.
    #
    class WatcherListResult

      include MsRestAzure

      # @return [Array<Watcher>] Gets or sets a list of watchers.
      attr_accessor :value

      # @return [String] Gets or sets the next link.
      attr_accessor :next_link


      #
      # Mapper for WatcherListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WatcherListResult',
          type: {
            name: 'Composite',
            class_name: 'WatcherListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WatcherElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Watcher'
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