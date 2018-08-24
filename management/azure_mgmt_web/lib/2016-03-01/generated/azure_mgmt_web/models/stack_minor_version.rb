# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Application stack minor version.
    #
    class StackMinorVersion

      include MsRestAzure

      # @return [String] Application stack minor version (display only).
      attr_accessor :display_version

      # @return [String] Application stack minor version (runtime only).
      attr_accessor :runtime_version

      # @return [Boolean] <code>true</code> if this is the default minor
      # version; otherwise, <code>false</code>.
      attr_accessor :is_default


      #
      # Mapper for StackMinorVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StackMinorVersion',
          type: {
            name: 'Composite',
            class_name: 'StackMinorVersion',
            model_properties: {
              display_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayVersion',
                type: {
                  name: 'String'
                }
              },
              runtime_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'runtimeVersion',
                type: {
                  name: 'String'
                }
              },
              is_default: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isDefault',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
