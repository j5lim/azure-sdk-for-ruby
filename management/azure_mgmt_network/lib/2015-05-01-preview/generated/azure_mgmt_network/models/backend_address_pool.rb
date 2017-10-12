# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2015_05_01_preview
  module Models
    #
    # Pool of backend IP addresseses
    #
    class BackendAddressPool < SubResource

      include MsRestAzure

      # @return [Array<SubResource>] Gets collection of references to IPs
      # defined in NICs
      attr_accessor :backend_ipconfigurations

      # @return [Array<SubResource>] Gets Load Balancing rules that use this
      # Backend Address Pool
      attr_accessor :load_balancing_rules

      # @return [SubResource] Gets outbound rules that use this Backend Address
      # Pool
      attr_accessor :outbound_nat_rule

      # @return [String] Provisioning state of the PublicIP resource
      # Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for BackendAddressPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackendAddressPool',
          type: {
            name: 'Composite',
            class_name: 'BackendAddressPool',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              backend_ipconfigurations: {
                required: false,
                serialized_name: 'properties.backendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              load_balancing_rules: {
                required: false,
                serialized_name: 'properties.loadBalancingRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              outbound_nat_rule: {
                required: false,
                serialized_name: 'properties.outboundNatRule',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
