# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_06_01
  module Models
    #
    # Reference to another subresource.
    #
    class SubResource

      include MsRestAzure

      # @return [String] Resource ID.
      attr_accessor :id


      #
      # Mapper for SubResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubResource',
          type: {
            name: 'Composite',
            class_name: 'SubResource',
            model_properties: {
              id: {
                client_side_validation: true,
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
