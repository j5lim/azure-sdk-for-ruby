# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_04_01
  module Models
    #
    # The properties indicating whether a given IoT hub name is available.
    #
    class IotHubNameAvailabilityInfo

      include MsRestAzure

      # @return [Boolean] The value which indicates whether the provided name
      # is available.
      attr_accessor :name_available

      # @return [IotHubNameUnavailabilityReason] The reason for unavailability.
      # Possible values include: 'Invalid', 'AlreadyExists'
      attr_accessor :reason

      # @return [String] The detailed reason message.
      attr_accessor :message


      #
      # Mapper for IotHubNameAvailabilityInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHubNameAvailabilityInfo',
          type: {
            name: 'Composite',
            class_name: 'IotHubNameAvailabilityInfo',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'Enum',
                  module: 'IotHubNameUnavailabilityReason'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
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
