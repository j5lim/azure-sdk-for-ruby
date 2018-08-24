# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Simple policy schedule.
    #
    class SimpleSchedulePolicy < SchedulePolicy

      include MsRestAzure


      def initialize
        @schedulePolicyType = "SimpleSchedulePolicy"
      end

      attr_accessor :schedulePolicyType

      # @return [ScheduleRunType] Frequency of the schedule operation of this
      # policy. Possible values include: 'Invalid', 'Daily', 'Weekly'
      attr_accessor :schedule_run_frequency

      # @return [Array<DayOfWeek>] List of days of week this schedule has to be
      # run.
      attr_accessor :schedule_run_days

      # @return [Array<DateTime>] List of times of day this schedule has to be
      # run.
      attr_accessor :schedule_run_times

      # @return [Integer] At every number weeks this schedule has to be run.
      attr_accessor :schedule_weekly_frequency


      #
      # Mapper for SimpleSchedulePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SimpleSchedulePolicy',
          type: {
            name: 'Composite',
            class_name: 'SimpleSchedulePolicy',
            model_properties: {
              schedulePolicyType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'schedulePolicyType',
                type: {
                  name: 'String'
                }
              },
              schedule_run_frequency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scheduleRunFrequency',
                type: {
                  name: 'String'
                }
              },
              schedule_run_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scheduleRunDays',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DayOfWeek'
                      }
                  }
                }
              },
              schedule_run_times: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scheduleRunTimes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              schedule_weekly_frequency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scheduleWeeklyFrequency',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
