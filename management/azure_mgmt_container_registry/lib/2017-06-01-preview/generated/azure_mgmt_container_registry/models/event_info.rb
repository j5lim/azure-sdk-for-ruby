# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_06_01_preview
  module Models
    #
    # The basic information of an event.
    #
    class EventInfo

      include MsRestAzure

      # @return [String] The event ID.
      attr_accessor :id


      #
      # Mapper for EventInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventInfo',
          type: {
            name: 'Composite',
            class_name: 'EventInfo',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
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
