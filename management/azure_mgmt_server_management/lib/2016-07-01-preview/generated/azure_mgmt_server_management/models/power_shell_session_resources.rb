# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServerManagement::Api_2016_07_01_preview
  module Models
    #
    # A collection of PowerShell session resources
    #
    class PowerShellSessionResources

      include MsRestAzure

      # @return [Array<PowerShellSessionResource>] Collection of PowerShell
      # session resources.
      attr_accessor :value

      # @return [String] The URL to the next set of resources.
      attr_accessor :next_link


      #
      # Mapper for PowerShellSessionResources class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PowerShellSessionResources',
          type: {
            name: 'Composite',
            class_name: 'PowerShellSessionResources',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PowerShellSessionResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PowerShellSessionResource'
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
