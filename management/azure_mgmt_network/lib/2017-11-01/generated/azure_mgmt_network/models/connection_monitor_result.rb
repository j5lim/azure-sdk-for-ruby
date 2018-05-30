# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_11_01
  module Models
    #
    # Information about the connection monitor.
    #
    class ConnectionMonitorResult

      include MsRestAzure

      # @return [String] Name of the connection monitor.
      attr_accessor :name

      # @return [String] ID of the connection monitor.
      attr_accessor :id

      # @return [String] . Default value: 'A unique read-only string that
      # changes whenever the resource is updated.' .
      attr_accessor :etag

      # @return [String] Connection monitor type.
      attr_accessor :type

      # @return [String] Connection monitor location.
      attr_accessor :location

      # @return [Hash{String => String}] Connection monitor tags.
      attr_accessor :tags

      # @return [ConnectionMonitorSource]
      attr_accessor :source

      # @return [ConnectionMonitorDestination]
      attr_accessor :destination

      # @return [Boolean] Determines if the connection monitor will start
      # automatically once created. Default value: true .
      attr_accessor :auto_start

      # @return [Integer] Monitoring interval in seconds. Default value: 60 .
      attr_accessor :monitoring_interval_in_seconds

      # @return [ProvisioningState] The provisioning state of the connection
      # monitor. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [DateTime] The date and time when the connection monitor was
      # started.
      attr_accessor :start_time

      # @return [String] The monitoring status of the connection monitor.
      attr_accessor :monitoring_status


      #
      # Mapper for ConnectionMonitorResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectionMonitorResult',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorResult',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                default_value: 'A unique read-only string that changes whenever the resource is updated.',
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
              source: {
                required: true,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorSource'
                }
              },
              destination: {
                required: true,
                serialized_name: 'properties.destination',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorDestination'
                }
              },
              auto_start: {
                required: false,
                serialized_name: 'properties.autoStart',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              monitoring_interval_in_seconds: {
                required: false,
                serialized_name: 'properties.monitoringIntervalInSeconds',
                default_value: 60,
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              monitoring_status: {
                required: false,
                serialized_name: 'properties.monitoringStatus',
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
