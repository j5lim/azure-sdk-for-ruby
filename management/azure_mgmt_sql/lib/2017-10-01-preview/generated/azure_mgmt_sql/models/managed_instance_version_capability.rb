# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # The managed instance capability
    #
    class ManagedInstanceVersionCapability

      include MsRestAzure

      # @return [String] The server version name.
      attr_accessor :name

      # @return [Array<ManagedInstanceEditionCapability>] The list of supported
      # managed instance editions.
      attr_accessor :supported_editions

      # @return [CapabilityStatus] The status of the capability. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [String] The reason for the capability not being available.
      attr_accessor :reason


      #
      # Mapper for ManagedInstanceVersionCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedInstanceVersionCapability',
          type: {
            name: 'Composite',
            class_name: 'ManagedInstanceVersionCapability',
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
              supported_editions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedEditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedInstanceEditionCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedInstanceEditionCapability'
                      }
                  }
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
