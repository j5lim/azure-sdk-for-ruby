# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_09_01
  module Models
    #
    # Network interface and all its associated security rules.
    #
    class SecurityGroupNetworkInterface

      include MsRestAzure

      # @return [String] ID of the network interface.
      attr_accessor :id

      # @return [SecurityRuleAssociations]
      attr_accessor :security_rule_associations


      #
      # Mapper for SecurityGroupNetworkInterface class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SecurityGroupNetworkInterface',
          type: {
            name: 'Composite',
            class_name: 'SecurityGroupNetworkInterface',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              security_rule_associations: {
                required: false,
                serialized_name: 'securityRuleAssociations',
                type: {
                  name: 'Composite',
                  class_name: 'SecurityRuleAssociations'
                }
              }
            }
          }
        }
      end
    end
  end
end
