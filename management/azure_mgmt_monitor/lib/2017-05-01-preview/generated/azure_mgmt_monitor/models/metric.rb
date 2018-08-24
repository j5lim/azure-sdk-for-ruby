# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_05_01_preview
  module Models
    #
    # The result data of a query.
    #
    class Metric

      include MsRestAzure

      # @return [String] the metric Id.
      attr_accessor :id

      # @return [String] the resource type of the metric resource.
      attr_accessor :type

      # @return [LocalizableString] the name and the display name of the
      # metric, i.e. it is localizable string.
      attr_accessor :name

      # @return [Unit] the unit of the metric. Possible values include:
      # 'Count', 'Bytes', 'Seconds', 'CountPerSecond', 'BytesPerSecond',
      # 'Percent', 'MilliSeconds', 'ByteSeconds', 'Unspecified'
      attr_accessor :unit

      # @return [Array<TimeSeriesElement>] the time series returned when a data
      # query is performed.
      attr_accessor :timeseries


      #
      # Mapper for Metric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Metric',
          type: {
            name: 'Composite',
            class_name: 'Metric',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              unit: {
                client_side_validation: true,
                required: true,
                serialized_name: 'unit',
                type: {
                  name: 'Enum',
                  module: 'Unit'
                }
              },
              timeseries: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeseries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TimeSeriesElementElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TimeSeriesElement'
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
