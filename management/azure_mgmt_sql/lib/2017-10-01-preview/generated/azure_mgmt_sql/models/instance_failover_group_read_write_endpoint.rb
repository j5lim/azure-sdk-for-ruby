# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # Read-write endpoint of the failover group instance.
    #
    class InstanceFailoverGroupReadWriteEndpoint

      include MsRestAzure

      # @return [ReadWriteEndpointFailoverPolicy] Failover policy of the
      # read-write endpoint for the failover group. If failoverPolicy is
      # Automatic then failoverWithDataLossGracePeriodMinutes is required.
      # Possible values include: 'Manual', 'Automatic'
      attr_accessor :failover_policy

      # @return [Integer] Grace period before failover with data loss is
      # attempted for the read-write endpoint. If failoverPolicy is Automatic
      # then failoverWithDataLossGracePeriodMinutes is required.
      attr_accessor :failover_with_data_loss_grace_period_minutes


      #
      # Mapper for InstanceFailoverGroupReadWriteEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InstanceFailoverGroupReadWriteEndpoint',
          type: {
            name: 'Composite',
            class_name: 'InstanceFailoverGroupReadWriteEndpoint',
            model_properties: {
              failover_policy: {
                client_side_validation: true,
                required: true,
                serialized_name: 'failoverPolicy',
                type: {
                  name: 'String'
                }
              },
              failover_with_data_loss_grace_period_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failoverWithDataLossGracePeriodMinutes',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
