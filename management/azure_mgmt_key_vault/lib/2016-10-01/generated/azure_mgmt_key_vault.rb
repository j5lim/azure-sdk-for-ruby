# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-10-01/generated/azure_mgmt_key_vault/module_definition'
require 'ms_rest_azure'

module Azure::ARM::KeyVault::Api_2016_10_01
  autoload :Vaults,                                             '2016-10-01/generated/azure_mgmt_key_vault/vaults.rb'
  autoload :KeyVaultManagementClient,                           '2016-10-01/generated/azure_mgmt_key_vault/key_vault_management_client.rb'

  module Models
    autoload :VaultCreateOrUpdateParameters,                      '2016-10-01/generated/azure_mgmt_key_vault/models/vault_create_or_update_parameters.rb'
    autoload :Permissions,                                        '2016-10-01/generated/azure_mgmt_key_vault/models/permissions.rb'
    autoload :DeletedVault,                                       '2016-10-01/generated/azure_mgmt_key_vault/models/deleted_vault.rb'
    autoload :VaultProperties,                                    '2016-10-01/generated/azure_mgmt_key_vault/models/vault_properties.rb'
    autoload :VaultListResult,                                    '2016-10-01/generated/azure_mgmt_key_vault/models/vault_list_result.rb'
    autoload :Sku,                                                '2016-10-01/generated/azure_mgmt_key_vault/models/sku.rb'
    autoload :DeletedVaultListResult,                             '2016-10-01/generated/azure_mgmt_key_vault/models/deleted_vault_list_result.rb'
    autoload :DeletedVaultProperties,                             '2016-10-01/generated/azure_mgmt_key_vault/models/deleted_vault_properties.rb'
    autoload :Resource,                                           '2016-10-01/generated/azure_mgmt_key_vault/models/resource.rb'
    autoload :AccessPolicyEntry,                                  '2016-10-01/generated/azure_mgmt_key_vault/models/access_policy_entry.rb'
    autoload :ResourceListResult,                                 '2016-10-01/generated/azure_mgmt_key_vault/models/resource_list_result.rb'
    autoload :Vault,                                              '2016-10-01/generated/azure_mgmt_key_vault/models/vault.rb'
    autoload :SkuName,                                            '2016-10-01/generated/azure_mgmt_key_vault/models/sku_name.rb'
    autoload :KeyPermissions,                                     '2016-10-01/generated/azure_mgmt_key_vault/models/key_permissions.rb'
    autoload :SecretPermissions,                                  '2016-10-01/generated/azure_mgmt_key_vault/models/secret_permissions.rb'
    autoload :CertificatePermissions,                             '2016-10-01/generated/azure_mgmt_key_vault/models/certificate_permissions.rb'
    autoload :StoragePermissions,                                 '2016-10-01/generated/azure_mgmt_key_vault/models/storage_permissions.rb'
    autoload :CreateMode,                                         '2016-10-01/generated/azure_mgmt_key_vault/models/create_mode.rb'
  end
end
