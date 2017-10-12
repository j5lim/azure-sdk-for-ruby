# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics::Api_2016_03_01
  module Models
    #
    # The properties that are associated with an input containing stream data.
    #
    class StreamInputProperties < InputProperties

      include MsRestAzure


      def initialize
        @type = "Stream"
      end

      attr_accessor :type

      # @return [StreamInputDataSource] Describes an input data source that
      # contains stream data. Required on PUT (CreateOrReplace) requests.
      attr_accessor :datasource


      #
      # Mapper for StreamInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Stream',
          type: {
            name: 'Composite',
            class_name: 'StreamInputProperties',
            model_properties: {
              serialization: {
                required: false,
                serialized_name: 'serialization',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'Serialization',
                  class_name: 'Serialization'
                }
              },
              diagnostics: {
                required: false,
                read_only: true,
                serialized_name: 'diagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'Diagnostics'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              datasource: {
                required: false,
                serialized_name: 'datasource',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'StreamInputDataSource',
                  class_name: 'StreamInputDataSource'
                }
              }
            }
          }
        }
      end
    end
  end
end
