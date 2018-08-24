# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # User details.
    #
    class UserContract < Resource

      include MsRestAzure

      # @return [UserState] Account state. Specifies whether the user is active
      # or not. Blocked users are unable to sign into the developer portal or
      # call any APIs of subscribed products. Default state is Active. Possible
      # values include: 'active', 'blocked', 'pending', 'deleted'. Default
      # value: 'active' .
      attr_accessor :state

      # @return [String] Optional note about a user set by the administrator.
      attr_accessor :note

      # @return [Array<UserIdentityContract>] Collection of user identities.
      attr_accessor :identities

      # @return [String] First name.
      attr_accessor :first_name

      # @return [String] Last name.
      attr_accessor :last_name

      # @return [String] Email address.
      attr_accessor :email

      # @return [DateTime] Date of user registration. The date conforms to the
      # following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601
      # standard.
      #
      attr_accessor :registration_date

      # @return [Array<GroupContractProperties>] Collection of groups user is
      # part of.
      attr_accessor :groups


      #
      # Mapper for UserContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserContract',
          type: {
            name: 'Composite',
            class_name: 'UserContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                default_value: 'active',
                type: {
                  name: 'String'
                }
              },
              note: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.note',
                type: {
                  name: 'String'
                }
              },
              identities: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.identities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserIdentityContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserIdentityContract'
                      }
                  }
                }
              },
              first_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.firstName',
                type: {
                  name: 'String'
                }
              },
              last_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastName',
                type: {
                  name: 'String'
                }
              },
              email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.email',
                type: {
                  name: 'String'
                }
              },
              registration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.registrationDate',
                type: {
                  name: 'DateTime'
                }
              },
              groups: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.groups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GroupContractPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GroupContractProperties'
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
