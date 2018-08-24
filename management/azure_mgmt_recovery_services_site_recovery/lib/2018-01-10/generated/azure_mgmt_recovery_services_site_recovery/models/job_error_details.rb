# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # This class contains the error details per object.
    #
    class JobErrorDetails

      include MsRestAzure

      # @return [ServiceError] The Service error details.
      attr_accessor :service_error_details

      # @return [ProviderError] The Provider error details.
      attr_accessor :provider_error_details

      # @return [String] Error level of error.
      attr_accessor :error_level

      # @return [DateTime] The creation time of job error.
      attr_accessor :creation_time

      # @return [String] The Id of the task.
      attr_accessor :task_id


      #
      # Mapper for JobErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'JobErrorDetails',
            model_properties: {
              service_error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceErrorDetails',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceError'
                }
              },
              provider_error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providerErrorDetails',
                type: {
                  name: 'Composite',
                  class_name: 'ProviderError'
                }
              },
              error_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorLevel',
                type: {
                  name: 'String'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              task_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskId',
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
