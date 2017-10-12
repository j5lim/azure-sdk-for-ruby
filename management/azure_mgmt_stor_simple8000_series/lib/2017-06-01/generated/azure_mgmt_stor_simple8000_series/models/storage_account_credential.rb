# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The storage account credential.
    #
    class StorageAccountCredential < BaseModel

      include MsRestAzure

      # @return [String] The storage endpoint
      attr_accessor :end_point

      # @return [SslStatus] Signifies whether SSL needs to be enabled or not.
      # Possible values include: 'Enabled', 'Disabled'
      attr_accessor :ssl_status

      # @return [AsymmetricEncryptedSecret] The details of the storage account
      # password.
      attr_accessor :access_key

      # @return [Integer] The count of volumes using this storage account
      # credential.
      attr_accessor :volumes_count


      #
      # Mapper for StorageAccountCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountCredential',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCredential',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              end_point: {
                required: true,
                serialized_name: 'properties.endPoint',
                type: {
                  name: 'String'
                }
              },
              ssl_status: {
                required: true,
                serialized_name: 'properties.sslStatus',
                type: {
                  name: 'Enum',
                  module: 'SslStatus'
                }
              },
              access_key: {
                required: false,
                serialized_name: 'properties.accessKey',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              },
              volumes_count: {
                required: false,
                read_only: true,
                serialized_name: 'properties.volumesCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
