# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Response for Import/Export Get operation.
    #
    class ImportExportResponse < ProxyResource

      include MsRestAzure

      # @return [String] The request type of the operation.
      attr_accessor :request_type

      # @return The request type of the operation.
      attr_accessor :request_id

      # @return [String] The name of the server.
      attr_accessor :server_name

      # @return [String] The name of the database.
      attr_accessor :database_name

      # @return [String] The status message returned from the server.
      attr_accessor :status

      # @return [String] The operation status last modified time.
      attr_accessor :last_modified_time

      # @return [String] The operation queued time.
      attr_accessor :queued_time

      # @return [String] The blob uri.
      attr_accessor :blob_uri

      # @return [String] The error message returned from the server.
      attr_accessor :error_message


      #
      # Mapper for ImportExportResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImportExportResponse',
          type: {
            name: 'Composite',
            class_name: 'ImportExportResponse',
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
              request_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.requestType',
                type: {
                  name: 'String'
                }
              },
              request_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.requestId',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serverName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseName',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'String'
                }
              },
              queued_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.queuedTime',
                type: {
                  name: 'String'
                }
              },
              blob_uri: {
                required: false,
                read_only: true,
                serialized_name: 'properties.blobUri',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                required: false,
                read_only: true,
                serialized_name: 'properties.errorMessage',
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
