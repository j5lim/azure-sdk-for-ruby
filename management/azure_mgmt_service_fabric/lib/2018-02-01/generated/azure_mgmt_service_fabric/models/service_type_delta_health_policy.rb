# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2018_02_01
  module Models
    #
    # Represents the delta health policy used to evaluate the health of
    # services belonging to a service type when upgrading the cluster.
    #
    #
    class ServiceTypeDeltaHealthPolicy

      include MsRestAzure

      # @return [Integer] The maximum allowed percentage of services health
      # degradation allowed during cluster upgrades.
      # The delta is measured between the state of the services at the
      # beginning of upgrade and the state of the services at the time of the
      # health evaluation.
      # The check is performed after every upgrade domain upgrade completion to
      # make sure the global state of the cluster is within tolerated limits.
      # . Default value: 0 .
      attr_accessor :max_percent_delta_unhealthy_services


      #
      # Mapper for ServiceTypeDeltaHealthPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTypeDeltaHealthPolicy',
          type: {
            name: 'Composite',
            class_name: 'ServiceTypeDeltaHealthPolicy',
            model_properties: {
              max_percent_delta_unhealthy_services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPercentDeltaUnhealthyServices',
                default_value: 0,
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
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
