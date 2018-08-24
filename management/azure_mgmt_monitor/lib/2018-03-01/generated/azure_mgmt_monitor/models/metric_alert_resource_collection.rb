# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # Represents a collection of alert rule resources.
    #
    class MetricAlertResourceCollection

      include MsRestAzure

      # @return [Array<MetricAlertResource>] the values for the alert rule
      # resources.
      attr_accessor :value


      #
      # Mapper for MetricAlertResourceCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricAlertResourceCollection',
          type: {
            name: 'Composite',
            class_name: 'MetricAlertResourceCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricAlertResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricAlertResource'
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
