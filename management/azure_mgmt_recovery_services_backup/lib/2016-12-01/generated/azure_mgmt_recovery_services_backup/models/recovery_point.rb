# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Base class for backup copies. Workload-specific backup copies are derived
    # from this class.
    #
    class RecoveryPoint

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["GenericRecoveryPoint"] = "GenericRecoveryPoint"
      @@discriminatorMap["IaasVMRecoveryPoint"] = "IaasVMRecoveryPoint"

      def initialize
        @objectType = "RecoveryPoint"
      end

      attr_accessor :objectType


      #
      # Mapper for RecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPoint',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'RecoveryPoint',
            class_name: 'RecoveryPoint',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
