# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2017_03_01_preview
  module Models
    #
    # A database operation.
    #
    class DatabaseOperation < ProxyResource

      include MsRestAzure

      # @return [String] The name of the database the operation is being
      # performed on.
      attr_accessor :database_name

      # @return [String] The name of operation.
      attr_accessor :operation

      # @return [String] The friendly name of operation.
      attr_accessor :operation_friendly_name

      # @return [Integer] The percentage of the operation completed.
      attr_accessor :percent_complete

      # @return [String] The name of the server.
      attr_accessor :server_name

      # @return [DateTime] The operation start time.
      attr_accessor :start_time

      # @return [ManagementOperationState] The operation state. Possible values
      # include: 'Pending', 'InProgress', 'Succeeded', 'Failed',
      # 'CancelInProgress', 'Cancelled'
      attr_accessor :state

      # @return [Integer] The operation error code.
      attr_accessor :error_code

      # @return [String] The operation error description.
      attr_accessor :error_description

      # @return [Integer] The operation error severity.
      attr_accessor :error_severity

      # @return [Boolean] Whether or not the error is a user error.
      attr_accessor :is_user_error


      #
      # Mapper for DatabaseOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseOperation',
          type: {
            name: 'Composite',
            class_name: 'DatabaseOperation',
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
              database_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseName',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                read_only: true,
                serialized_name: 'properties.operation',
                type: {
                  name: 'String'
                }
              },
              operation_friendly_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.operationFriendlyName',
                type: {
                  name: 'String'
                }
              },
              percent_complete: {
                required: false,
                read_only: true,
                serialized_name: 'properties.percentComplete',
                type: {
                  name: 'Number'
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
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              error_code: {
                required: false,
                read_only: true,
                serialized_name: 'properties.errorCode',
                type: {
                  name: 'Number'
                }
              },
              error_description: {
                required: false,
                read_only: true,
                serialized_name: 'properties.errorDescription',
                type: {
                  name: 'String'
                }
              },
              error_severity: {
                required: false,
                read_only: true,
                serialized_name: 'properties.errorSeverity',
                type: {
                  name: 'Number'
                }
              },
              is_user_error: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isUserError',
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
