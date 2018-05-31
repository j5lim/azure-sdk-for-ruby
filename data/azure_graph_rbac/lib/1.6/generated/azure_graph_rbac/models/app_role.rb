# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Represents an application role that may be requested by a client
    # application calling another application or that may be used to assign an
    # application to users or groups in a specified application role. The
    # appRoles property of the servicePrincipal entity and of the application
    # entity is a collection of appRole.
    #
    class AppRole

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [Array<String>] Specifies whether this app role definition can
      # be assigned to users and groups, to other applications, or to both.
      attr_accessor :allowed_member_types

      # @return [String] Permission help text that appears in the admin app
      # assignment and consent experiences.
      attr_accessor :description

      # @return [String] Display name for the permission that appears in the
      # admin consent and app assignment experiences.
      attr_accessor :display_name

      # @return [String] Unique role identifier inside the appRoles collection.
      attr_accessor :id

      # @return [Boolean] When creating or updating a role definition, this
      # must be set to true (which is the default). To delete a role, this must
      # first be set to false.
      attr_accessor :is_enabled

      # @return [String] Specifies the value of the roles claim that the
      # application should expect in the authentication and access tokens.
      attr_accessor :value


      #
      # Mapper for AppRole class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppRole',
          type: {
            name: 'Composite',
            class_name: 'AppRole',
            model_properties: {
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              allowed_member_types: {
                required: false,
                serialized_name: 'allowedMemberTypes',
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
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                required: false,
                serialized_name: 'isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
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
