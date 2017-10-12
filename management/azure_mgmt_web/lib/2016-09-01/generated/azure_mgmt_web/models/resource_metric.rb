# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_09_01
  module Models
    #
    # Object representing a metric for any resource .
    #
    class ResourceMetric

      include MsRestAzure

      # @return [ResourceMetricName] Name of metric.
      attr_accessor :name

      # @return [String] Metric unit.
      attr_accessor :unit

      # @return [String] Metric granularity. E.g PT1H, PT5M, P1D
      attr_accessor :time_grain

      # @return [DateTime] Metric start time.
      attr_accessor :start_time

      # @return [DateTime] Metric end time.
      attr_accessor :end_time

      # @return [String] Metric resource Id.
      attr_accessor :resource_id

      # @return [String] Resource Id.
      attr_accessor :id

      # @return [Array<ResourceMetricValue>] Metric values.
      attr_accessor :metric_values

      # @return [Array<ResourceMetricProperty>] Properties.
      attr_accessor :properties


      #
      # Mapper for ResourceMetric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceMetric',
          type: {
            name: 'Composite',
            class_name: 'ResourceMetric',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceMetricName'
                }
              },
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              time_grain: {
                required: false,
                read_only: true,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              resource_id: {
                required: false,
                read_only: true,
                serialized_name: 'resourceId',
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
              metric_values: {
                required: false,
                read_only: true,
                serialized_name: 'metricValues',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceMetricValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceMetricValue'
                      }
                  }
                }
              },
              properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceMetricPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceMetricProperty'
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
