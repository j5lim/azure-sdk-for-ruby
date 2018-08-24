# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # Weekly retention schedule.
    #
    class WeeklyRetentionSchedule

      include MsRestAzure

      # @return [Array<DayOfWeek>] List of the days of the week for the weekly
      # retention policy.
      attr_accessor :days_of_the_week

      # @return [Array<DateTime>] Retention times of the retention policy.
      attr_accessor :retention_times

      # @return [RetentionDuration] Retention duration of retention policy.
      attr_accessor :retention_duration


      #
      # Mapper for WeeklyRetentionSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WeeklyRetentionSchedule',
          type: {
            name: 'Composite',
            class_name: 'WeeklyRetentionSchedule',
            model_properties: {
              days_of_the_week: {
                client_side_validation: true,
                required: false,
                serialized_name: 'daysOfTheWeek',
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
              retention_times: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionTimes',
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
              retention_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionDuration',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionDuration'
                }
              }
            }
          }
        }
      end
    end
  end
end
