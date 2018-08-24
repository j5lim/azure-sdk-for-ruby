# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # The edition capability.
    #
    class EditionCapability

      include MsRestAzure

      # @return [String] The database edition name.
      attr_accessor :name

      # @return [Array<ServiceObjectiveCapability>] The list of supported
      # service objectives for the edition.
      attr_accessor :supported_service_level_objectives

      # @return [Boolean] Whether or not zone redundancy is supported for the
      # edition.
      attr_accessor :zone_redundant

      # @return [CapabilityStatus] The status of the capability. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [String] The reason for the capability not being available.
      attr_accessor :reason


      #
      # Mapper for EditionCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EditionCapability',
          type: {
            name: 'Composite',
            class_name: 'EditionCapability',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              supported_service_level_objectives: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedServiceLevelObjectives',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceObjectiveCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceObjectiveCapability'
                      }
                  }
                }
              },
              zone_redundant: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'zoneRedundant',
                type: {
                  name: 'Boolean'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
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
