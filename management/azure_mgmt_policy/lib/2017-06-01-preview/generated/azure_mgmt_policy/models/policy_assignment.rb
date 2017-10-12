# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Policy::Api_2017_06_01_preview
  module Models
    #
    # The policy assignment.
    #
    class PolicyAssignment

      include MsRestAzure

      # @return [String] The display name of the policy assignment.
      attr_accessor :display_name

      # @return [String] The ID of the policy definition.
      attr_accessor :policy_definition_id

      # @return [String] The scope for the policy assignment.
      attr_accessor :scope

      # @return [Array<String>] The policy's excluded scopes.
      attr_accessor :not_scopes

      # @return Required if a parameter is used in policy rule.
      attr_accessor :parameters

      # @return [String] This message will be part of response in case of
      # policy violation.
      attr_accessor :description

      # @return The policy assignment metadata.
      attr_accessor :metadata

      # @return [String] The ID of the policy assignment.
      attr_accessor :id

      # @return [String] The type of the policy assignment.
      attr_accessor :type

      # @return [String] The name of the policy assignment.
      attr_accessor :name

      # @return [PolicySku] The policy sku.
      attr_accessor :sku


      #
      # Mapper for PolicyAssignment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicyAssignment',
          type: {
            name: 'Composite',
            class_name: 'PolicyAssignment',
            model_properties: {
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              policy_definition_id: {
                required: false,
                serialized_name: 'properties.policyDefinitionId',
                type: {
                  name: 'String'
                }
              },
              scope: {
                required: false,
                serialized_name: 'properties.scope',
                type: {
                  name: 'String'
                }
              },
              not_scopes: {
                required: false,
                serialized_name: 'properties.notScopes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Object'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Object'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'PolicySku'
                }
              }
            }
          }
        }
      end
    end
  end
end
