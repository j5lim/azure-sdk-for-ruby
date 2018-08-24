# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2016_10_01
  module Models
    #
    # The contacts for the vault certificates.
    #
    class Contacts

      include MsRestAzure

      # @return [String] Identifier for the contacts collection.
      attr_accessor :id

      # @return [Array<Contact>] The contact list for the vault certificates.
      attr_accessor :contact_list


      #
      # Mapper for Contacts class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Contacts',
          type: {
            name: 'Composite',
            class_name: 'Contacts',
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
              contact_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contacts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContactElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Contact'
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
