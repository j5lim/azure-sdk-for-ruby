# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # San enable protection provider specific input.
    #
    class SanEnableProtectionInput < EnableProtectionProviderSpecificInput

      include MsRestAzure


      def initialize
        @instanceType = "San"
      end

      attr_accessor :instanceType


      #
      # Mapper for SanEnableProtectionInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'San',
          type: {
            name: 'Composite',
            class_name: 'SanEnableProtectionInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
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
