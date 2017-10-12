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
    # The base class for backup items.
    #
    class ProtectedItem

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureIaaSVMProtectedItem"] = "AzureIaaSVMProtectedItem"
      @@discriminatorMap["MabFileFolderProtectedItem"] = "MabFileFolderProtectedItem"
      @@discriminatorMap["Microsoft.Sql/servers/databases"] = "AzureSqlProtectedItem"
      @@discriminatorMap["Microsoft.Compute/virtualMachines"] = "AzureIaaSComputeVMProtectedItem"
      @@discriminatorMap["Microsoft.ClassicCompute/virtualMachines"] = "AzureIaaSClassicComputeVMProtectedItem"

      def initialize
        @protectedItemType = "ProtectedItem"
      end

      attr_accessor :protectedItemType

      # @return [BackupManagementType] The backup managemenent type associated
      # with the backup item. Possible values include: 'Invalid',
      # 'AzureIaasVM', 'MAB', 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [DataSourceType] The workload type for this item. Possible
      # values include: 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb', 'SQLDB',
      # 'Exchange', 'Sharepoint', 'DPMUnknown'
      attr_accessor :workload_type

      # @return [String] The ID of the resource to be backed up.
      attr_accessor :source_resource_id

      # @return [String] The ID of the backup policy associated with this
      # backup item.
      attr_accessor :policy_id

      # @return [DateTime] The timestamp when the most recent backup copy was
      # created for this backup item.
      attr_accessor :last_recovery_point


      #
      # Mapper for ProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectedItem',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'protectedItemType',
            uber_parent: 'ProtectedItem',
            class_name: 'ProtectedItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'Enum',
                  module: 'DataSourceType'
                }
              },
              source_resource_id: {
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
