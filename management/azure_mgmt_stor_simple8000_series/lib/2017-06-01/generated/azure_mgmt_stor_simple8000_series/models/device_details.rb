# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The additional device details regarding the end point count and volume
    # container count.
    #
    class DeviceDetails

      include MsRestAzure

      # @return [Integer] The total number of endpoints that are currently on
      # the device ( i.e. number of volumes).
      attr_accessor :endpoint_count

      # @return [Integer] The total number of volume containers on the device.
      attr_accessor :volume_container_count


      #
      # Mapper for DeviceDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceDetails',
          type: {
            name: 'Composite',
            class_name: 'DeviceDetails',
            model_properties: {
              endpoint_count: {
                required: false,
                serialized_name: 'endpointCount',
                type: {
                  name: 'Number'
                }
              },
              volume_container_count: {
                required: false,
                serialized_name: 'volumeContainerCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
