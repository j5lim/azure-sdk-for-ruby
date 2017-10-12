# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2016_02_03
  module Models
    #
    # Input values.
    #
    class OperationInputs

      include MsRestAzure

      # @return [String] The name of the IoT hub to check.
      attr_accessor :name


      #
      # Mapper for OperationInputs class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationInputs',
          type: {
            name: 'Composite',
            class_name: 'OperationInputs',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'Name',
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
