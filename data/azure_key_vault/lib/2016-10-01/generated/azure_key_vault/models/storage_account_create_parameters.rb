# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2016_10_01
  module Models
    #
    # The storage account create parameters.
    #
    class StorageAccountCreateParameters

      include MsRestAzure

      # @return [String] Storage account resource id.
      attr_accessor :resource_id

      # @return [String] Current active storage account key name.
      attr_accessor :active_key_name

      # @return [Boolean] whether keyvault should manage the storage account
      # for the user.
      attr_accessor :auto_regenerate_key

      # @return [String] The key regeneration time duration specified in
      # ISO-8601 format.
      attr_accessor :regeneration_period

      # @return [StorageAccountAttributes] The attributes of the storage
      # account.
      attr_accessor :storage_account_attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for StorageAccountCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCreateParameters',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              active_key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'activeKeyName',
                type: {
                  name: 'String'
                }
              },
              auto_regenerate_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'autoRegenerateKey',
                type: {
                  name: 'Boolean'
                }
              },
              regeneration_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'regenerationPeriod',
                type: {
                  name: 'String'
                }
              },
              storage_account_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountAttributes'
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
              }
            }
          }
        }
      end
    end
  end
end
