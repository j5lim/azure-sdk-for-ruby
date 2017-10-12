# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Recovery plan test failover input properties.
    #
    class RecoveryPlanTestFailoverInputProperties

      include MsRestAzure

      # @return [PossibleOperationsDirections] The failover direction. Possible
      # values include: 'PrimaryToRecovery', 'RecoveryToPrimary'
      attr_accessor :failover_direction

      # @return [String] The network type to be used for test failover.
      attr_accessor :network_type

      # @return [String] The Id of the network to be used for test failover.
      attr_accessor :network_id

      # @return [String] A value indicating whether the test failover cleanup
      # is to be skipped.
      attr_accessor :skip_test_failover_cleanup

      # @return [Array<RecoveryPlanProviderSpecificFailoverInput>] The provider
      # specific properties.
      attr_accessor :provider_specific_details


      #
      # Mapper for RecoveryPlanTestFailoverInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPlanTestFailoverInputProperties',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanTestFailoverInputProperties',
            model_properties: {
              failover_direction: {
                required: true,
                serialized_name: 'failoverDirection',
                type: {
                  name: 'Enum',
                  module: 'PossibleOperationsDirections'
                }
              },
              network_type: {
                required: true,
                serialized_name: 'networkType',
                type: {
                  name: 'String'
                }
              },
              network_id: {
                required: false,
                serialized_name: 'networkId',
                type: {
                  name: 'String'
                }
              },
              skip_test_failover_cleanup: {
                required: false,
                serialized_name: 'skipTestFailoverCleanup',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoveryPlanProviderSpecificFailoverInputElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'instanceType',
                        uber_parent: 'RecoveryPlanProviderSpecificFailoverInput',
                        class_name: 'RecoveryPlanProviderSpecificFailoverInput'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
