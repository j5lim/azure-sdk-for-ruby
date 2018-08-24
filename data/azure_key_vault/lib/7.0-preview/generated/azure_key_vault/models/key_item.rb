# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0_preview
  module Models
    #
    # The key item containing key metadata.
    #
    class KeyItem

      include MsRestAzure

      # @return [String] Key identifier.
      attr_accessor :kid

      # @return [KeyAttributes] The key management attributes.
      attr_accessor :attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags

      # @return [Boolean] True if the key's lifetime is managed by key vault.
      # If this is a key backing a certificate, then managed will be true.
      attr_accessor :managed


      #
      # Mapper for KeyItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyItem',
          type: {
            name: 'Composite',
            class_name: 'KeyItem',
            model_properties: {
              kid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kid',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'KeyAttributes'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              managed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'managed',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
