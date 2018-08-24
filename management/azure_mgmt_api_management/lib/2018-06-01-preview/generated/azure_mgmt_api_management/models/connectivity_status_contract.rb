# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Details about connectivity to a resource.
    #
    class ConnectivityStatusContract

      include MsRestAzure

      # @return [String] The hostname of the resource which the service depends
      # on. This can be the database, storage or any other azure resource on
      # which the service depends upon.
      attr_accessor :name

      # @return [ConnectivityStatusType] Resource Connectivity Status Type
      # identifier. Possible values include: 'initializing', 'success',
      # 'failure'
      attr_accessor :status

      # @return [String] Error details of the connectivity to the resource.
      attr_accessor :error

      # @return [DateTime] The date when the resource connectivity status was
      # last updated. This status should be updated every 15 minutes. If this
      # status has not been updated, then it means that the service has lost
      # network connectivity to the resource, from inside the Virtual
      # Network.The date conforms to the following format:
      # `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
      #
      attr_accessor :last_updated

      # @return [DateTime] The date when the resource connectivity status last
      # Changed from success to failure or vice-versa. The date conforms to the
      # following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601
      # standard.
      #
      attr_accessor :last_status_change


      #
      # Mapper for ConnectivityStatusContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectivityStatusContract',
          type: {
            name: 'Composite',
            class_name: 'ConnectivityStatusContract',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'String'
                }
              },
              last_updated: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lastUpdated',
                type: {
                  name: 'DateTime'
                }
              },
              last_status_change: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lastStatusChange',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
