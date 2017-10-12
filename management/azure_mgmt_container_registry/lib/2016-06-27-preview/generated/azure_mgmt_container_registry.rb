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
require '2016-06-27-preview/generated/azure_mgmt_container_registry/module_definition'
require 'ms_rest_azure'

module Azure::ARM::ContainerRegistry::Api_2016_06_27_preview
  autoload :Registries,                                         '2016-06-27-preview/generated/azure_mgmt_container_registry/registries.rb'
  autoload :ContainerRegistryManagementClient,                  '2016-06-27-preview/generated/azure_mgmt_container_registry/container_registry_management_client.rb'

  module Models
    autoload :RegistryUpdateParameters,                           '2016-06-27-preview/generated/azure_mgmt_container_registry/models/registry_update_parameters.rb'
    autoload :RegistryNameCheckRequest,                           '2016-06-27-preview/generated/azure_mgmt_container_registry/models/registry_name_check_request.rb'
    autoload :RegistryListResult,                                 '2016-06-27-preview/generated/azure_mgmt_container_registry/models/registry_list_result.rb'
    autoload :StorageAccountProperties,                           '2016-06-27-preview/generated/azure_mgmt_container_registry/models/storage_account_properties.rb'
    autoload :RegistryCredentials,                                '2016-06-27-preview/generated/azure_mgmt_container_registry/models/registry_credentials.rb'
    autoload :RegistryNameStatus,                                 '2016-06-27-preview/generated/azure_mgmt_container_registry/models/registry_name_status.rb'
    autoload :Resource,                                           '2016-06-27-preview/generated/azure_mgmt_container_registry/models/resource.rb'
    autoload :Registry,                                           '2016-06-27-preview/generated/azure_mgmt_container_registry/models/registry.rb'
  end
end
