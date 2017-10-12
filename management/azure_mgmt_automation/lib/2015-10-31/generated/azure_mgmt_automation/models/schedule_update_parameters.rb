# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The parameters supplied to the update schedule operation.
    #
    class ScheduleUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the schedule.
      attr_accessor :name

      # @return [String] Gets or sets the description of the schedule.
      attr_accessor :description

      # @return [Boolean] Gets or sets a value indicating whether this schedule
      # is enabled.
      attr_accessor :is_enabled


      #
      # Mapper for ScheduleUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ScheduleUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ScheduleUpdateParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                required: false,
                serialized_name: 'properties.isEnabled',
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
