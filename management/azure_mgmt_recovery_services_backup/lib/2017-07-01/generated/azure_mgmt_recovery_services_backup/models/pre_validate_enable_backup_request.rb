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
    # Contract to validate if backup can be enabled on the given resource in a
    # given vault and given configuration.
    # It will validate followings
    # 1. Vault capacity
    # 2. VM is already protected
    # 3. Any VM related configuration passed in properties.
    #
    class PreValidateEnableBackupRequest

      include MsRestAzure

      # @return [DataSourceType] ProtectedItem Type- VM, SqlDataBase,
      # AzureFileShare etc. Possible values include: 'Invalid', 'VM',
      # 'FileFolder', 'AzureSqlDb', 'SQLDB', 'Exchange', 'Sharepoint',
      # 'VMwareVM', 'SystemState', 'Client', 'GenericDataSource',
      # 'SQLDataBase', 'AzureFileShare', 'SAPHanaDatabase'
      attr_accessor :resource_type

      # @return [String] ARM Virtual Machine Id
      attr_accessor :resource_id

      # @return [String] ARM id of the Recovery Services Vault
      attr_accessor :vault_id

      # @return [String] Configuration of VM if any needs to be validated like
      # OS type etc
      attr_accessor :properties


      #
      # Mapper for PreValidateEnableBackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PreValidateEnableBackupRequest',
          type: {
            name: 'Composite',
            class_name: 'PreValidateEnableBackupRequest',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              vault_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vaultId',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
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
