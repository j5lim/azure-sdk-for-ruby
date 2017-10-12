# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_06_01
  module Models
    #
    # Daily retention schedule.
    #
    class DailyRetentionSchedule

      include MsRestAzure

      # @return [Array<DateTime>] The retention times of retention policy.
      attr_accessor :retention_times

      # @return [RetentionDuration] The retention duration of retention policy.
      attr_accessor :retention_duration


      #
      # Mapper for DailyRetentionSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DailyRetentionSchedule',
          type: {
            name: 'Composite',
            class_name: 'DailyRetentionSchedule',
            model_properties: {
              retention_times: {
                required: false,
                serialized_name: 'retentionTimes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              retention_duration: {
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
