# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # Definition of the job schedule.
    #
    class JobSchedule

      include MsRestAzure

      # @return [String] Gets or sets the id of the resource.
      attr_accessor :id

      # @return [String] Gets or sets the id of job schedule.
      attr_accessor :job_schedule_id

      # @return [ScheduleAssociationProperty] Gets or sets the schedule.
      attr_accessor :schedule

      # @return [RunbookAssociationProperty] Gets or sets the runbook.
      attr_accessor :runbook

      # @return [String] Gets or sets the hybrid worker group that the
      # scheduled job should run on.
      attr_accessor :run_on

      # @return [Hash{String => String}] Gets or sets the parameters of the job
      # schedule.
      attr_accessor :parameters


      #
      # Mapper for JobSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobSchedule',
          type: {
            name: 'Composite',
            class_name: 'JobSchedule',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              job_schedule_id: {
                required: false,
                serialized_name: 'properties.jobScheduleId',
                type: {
                  name: 'String'
                }
              },
              schedule: {
                required: false,
                serialized_name: 'properties.schedule',
                type: {
                  name: 'Composite',
                  class_name: 'ScheduleAssociationProperty'
                }
              },
              runbook: {
                required: false,
                serialized_name: 'properties.runbook',
                type: {
                  name: 'Composite',
                  class_name: 'RunbookAssociationProperty'
                }
              },
              run_on: {
                required: false,
                serialized_name: 'properties.runOn',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
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
              }
            }
          }
        }
      end
    end
  end
end
