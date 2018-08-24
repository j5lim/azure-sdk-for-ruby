# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Enable protection provider specific input.
    #
    class EnableProtectionProviderSpecificInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["A2A"] = "A2AEnableProtectionInput"
      @@discriminatorMap["HyperVReplicaAzure"] = "HyperVReplicaAzureEnableProtectionInput"
      @@discriminatorMap["InMageAzureV2"] = "InMageAzureV2EnableProtectionInput"
      @@discriminatorMap["InMage"] = "InMageEnableProtectionInput"
      @@discriminatorMap["San"] = "SanEnableProtectionInput"

      def initialize
        @instanceType = "EnableProtectionProviderSpecificInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for EnableProtectionProviderSpecificInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnableProtectionProviderSpecificInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'EnableProtectionProviderSpecificInput',
            class_name: 'EnableProtectionProviderSpecificInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
