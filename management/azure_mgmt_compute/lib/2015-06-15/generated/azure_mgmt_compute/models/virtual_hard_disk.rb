# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2015_06_15
  module Models
    #
    # Describes the uri of a disk.
    #
    class VirtualHardDisk

      include MsRestAzure

      # @return [String] The virtual hard disk's URI. Must be a valid URI to a
      # virtual hard disk.
      attr_accessor :uri


      #
      # Mapper for VirtualHardDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualHardDisk',
          type: {
            name: 'Composite',
            class_name: 'VirtualHardDisk',
            model_properties: {
              uri: {
                required: false,
                serialized_name: 'uri',
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
