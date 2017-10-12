# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Provider specific reverse replication input.
    #
    class ReverseReplicationProviderSpecificInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["HyperVReplicaAzure"] = "HyperVReplicaAzureReprotectInput"
      @@discriminatorMap["InMageAzureV2"] = "InMageAzureV2ReprotectInput"
      @@discriminatorMap["InMage"] = "InMageReprotectInput"
      @@discriminatorMap["A2A"] = "A2AReprotectInput"

      def initialize
        @instanceType = "ReverseReplicationProviderSpecificInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for ReverseReplicationProviderSpecificInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReverseReplicationProviderSpecificInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'ReverseReplicationProviderSpecificInput',
            class_name: 'ReverseReplicationProviderSpecificInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
