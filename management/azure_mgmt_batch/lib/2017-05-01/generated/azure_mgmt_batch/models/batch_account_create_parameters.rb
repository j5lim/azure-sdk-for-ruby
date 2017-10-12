# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch::Api_2017_05_01
  module Models
    #
    # Parameters supplied to the Create operation.
    #
    class BatchAccountCreateParameters

      include MsRestAzure

      # @return [String] The region in which to create the account.
      attr_accessor :location

      # @return [Hash{String => String}] The user-specified tags associated
      # with the account.
      attr_accessor :tags

      # @return [AutoStorageBaseProperties] The properties related to the
      # auto-storage account.
      attr_accessor :auto_storage

      # @return [PoolAllocationMode] The allocation mode to use for creating
      # pools in the Batch account. The pool allocation mode also affects how
      # clients may authenticate to the Batch Service API. If the mode is
      # BatchService, clients may authenticate using access keys or Azure
      # Active Directory. If the mode is UserSubscription, clients must use
      # Azure Active Directory. The default is BatchService. Possible values
      # include: 'BatchService', 'UserSubscription'
      attr_accessor :pool_allocation_mode

      # @return [KeyVaultReference] A reference to the Azure key vault
      # associated with the Batch account.
      attr_accessor :key_vault_reference


      #
      # Mapper for BatchAccountCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BatchAccountCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'BatchAccountCreateParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
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
              auto_storage: {
                required: false,
                serialized_name: 'properties.autoStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AutoStorageBaseProperties'
                }
              },
              pool_allocation_mode: {
                required: false,
                serialized_name: 'properties.poolAllocationMode',
                type: {
                  name: 'Enum',
                  module: 'PoolAllocationMode'
                }
              },
              key_vault_reference: {
                required: false,
                serialized_name: 'properties.keyVaultReference',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
