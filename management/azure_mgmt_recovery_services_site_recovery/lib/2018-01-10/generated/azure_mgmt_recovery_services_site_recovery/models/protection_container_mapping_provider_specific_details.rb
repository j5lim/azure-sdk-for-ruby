# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Container mapping provider specific details.
    #
    class ProtectionContainerMappingProviderSpecificDetails

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["A2A"] = "A2AProtectionContainerMappingDetails"

      def initialize
        @instanceType = "ProtectionContainerMappingProviderSpecificDetails"
      end

      attr_accessor :instanceType


      #
      # Mapper for ProtectionContainerMappingProviderSpecificDetails class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionContainerMappingProviderSpecificDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'ProtectionContainerMappingProviderSpecificDetails',
            class_name: 'ProtectionContainerMappingProviderSpecificDetails',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
