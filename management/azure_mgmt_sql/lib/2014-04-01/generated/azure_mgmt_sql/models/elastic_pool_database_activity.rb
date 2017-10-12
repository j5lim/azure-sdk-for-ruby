# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Represents the activity on an elastic pool.
    #
    class ElasticPoolDatabaseActivity < ProxyResource

      include MsRestAzure

      # @return [String] The geo-location where the resource lives
      attr_accessor :location

      # @return [String] The database name.
      attr_accessor :database_name

      # @return [DateTime] The time the operation finished (ISO8601 format).
      attr_accessor :end_time

      # @return [Integer] The error code if available.
      attr_accessor :error_code

      # @return [String] The error message if available.
      attr_accessor :error_message

      # @return [Integer] The error severity if available.
      attr_accessor :error_severity

      # @return [String] The operation name.
      attr_accessor :operation

      # @return The unique operation ID.
      attr_accessor :operation_id

      # @return [Integer] The percentage complete if available.
      attr_accessor :percent_complete

      # @return [String] The name for the elastic pool the database is moving
      # into if available.
      attr_accessor :requested_elastic_pool_name

      # @return [String] The name of the current elastic pool the database is
      # in if available.
      attr_accessor :current_elastic_pool_name

      # @return [String] The name of the current service objective if
      # available.
      attr_accessor :current_service_objective

      # @return [String] The name of the requested service objective if
      # available.
      attr_accessor :requested_service_objective

      # @return [String] The name of the server the elastic pool is in.
      attr_accessor :server_name

      # @return [DateTime] The time the operation started (ISO8601 format).
      attr_accessor :start_time

      # @return [String] The current state of the operation.
      attr_accessor :state


      #
      # Mapper for ElasticPoolDatabaseActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPoolDatabaseActivity',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolDatabaseActivity',
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
              location: {
                required: false,
                serialized_name: 'location',
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
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
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
              error_message: {
                required: false,
                read_only: true,
                serialized_name: 'properties.errorMessage',
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
              operation: {
                required: false,
                read_only: true,
                serialized_name: 'properties.operation',
                type: {
                  name: 'String'
                }
              },
              operation_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.operationId',
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
              requested_elastic_pool_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.requestedElasticPoolName',
                type: {
                  name: 'String'
                }
              },
              current_elastic_pool_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentElasticPoolName',
                type: {
                  name: 'String'
                }
              },
              current_service_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentServiceObjective',
                type: {
                  name: 'String'
                }
              },
              requested_service_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.requestedServiceObjective',
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
              }
            }
          }
        }
      end
    end
  end
end
