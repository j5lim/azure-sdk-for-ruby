# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor::Api_2017_05_01_preview
  module Models
    #
    # Part of MultiTenantDiagnosticSettings. Specifies the settings for a
    # particular metric.
    #
    class MetricSettings

      include MsRestAzure

      # @return [Duration] the timegrain of the metric in ISO8601 format.
      attr_accessor :time_grain

      # @return [String] Name of a Diagnostic Metric category for a resource
      # type this setting is applied to. To obtain the list of Diagnostic
      # metric categories for a resource, first perform a GET diagnostic
      # settings operation.
      attr_accessor :category

      # @return [Boolean] a value indicating whether this category is enabled.
      attr_accessor :enabled

      # @return [RetentionPolicy] the retention policy for this category.
      attr_accessor :retention_policy


      #
      # Mapper for MetricSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricSettings',
          type: {
            name: 'Composite',
            class_name: 'MetricSettings',
            model_properties: {
              time_grain: {
                required: false,
                serialized_name: 'timeGrain',
                type: {
                  name: 'TimeSpan'
                }
              },
              category: {
                required: false,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              retention_policy: {
                required: false,
                serialized_name: 'retentionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
