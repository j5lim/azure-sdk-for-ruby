# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The schedule property associated with the entity.
    #
    class ScheduleAssociationProperty

      include MsRestAzure

      # @return [String] Gets or sets the name of the schedule.
      attr_accessor :name


      #
      # Mapper for ScheduleAssociationProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ScheduleAssociationProperty',
          type: {
            name: 'Composite',
            class_name: 'ScheduleAssociationProperty',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
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
