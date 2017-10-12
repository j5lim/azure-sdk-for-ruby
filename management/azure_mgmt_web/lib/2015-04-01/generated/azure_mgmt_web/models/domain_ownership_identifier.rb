# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2015_04_01
  module Models
    #
    # Domain ownership Identifier.
    #
    class DomainOwnershipIdentifier < Resource

      include MsRestAzure

      # @return [String] Ownership Id.
      attr_accessor :ownership_id


      #
      # Mapper for DomainOwnershipIdentifier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DomainOwnershipIdentifier',
          type: {
            name: 'Composite',
            class_name: 'DomainOwnershipIdentifier',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
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
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              ownership_id: {
                required: false,
                serialized_name: 'properties.ownershipId',
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
