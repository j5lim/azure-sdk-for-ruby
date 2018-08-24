# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_03_01_preview
  module Models
    #
    # (Optional) The ID of the parent management group used during creation.
    #
    class CreateParentGroupInfo

      include MsRestAzure

      # @return [String] The fully qualified ID for the parent management
      # group.  For example,
      # /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
      attr_accessor :id

      # @return [String] The name of the parent management group
      attr_accessor :name

      # @return [String] The friendly name of the parent management group.
      attr_accessor :display_name


      #
      # Mapper for CreateParentGroupInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateParentGroupInfo',
          type: {
            name: 'Composite',
            class_name: 'CreateParentGroupInfo',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayName',
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
