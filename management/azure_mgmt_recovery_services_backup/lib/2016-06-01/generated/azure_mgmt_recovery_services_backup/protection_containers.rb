# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  #
  # Open API 2.0 Specs for Azure RecoveryServices Backup service
  #
  class ProtectionContainers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ProtectionContainers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Gets details of the specific container registered to your Recovery Services
    # vault.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the container.
    # @param container_name [String] The container name used for this GET
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectionContainerResource] operation results.
    #
    def get(vault_name, resource_group_name, fabric_name, container_name, custom_headers:nil)
      response = get_async(vault_name, resource_group_name, fabric_name, container_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets details of the specific container registered to your Recovery Services
    # vault.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the container.
    # @param container_name [String] The container name used for this GET
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, fabric_name, container_name, custom_headers:nil)
      get_async(vault_name, resource_group_name, fabric_name, container_name, custom_headers:custom_headers).value!
    end

    #
    # Gets details of the specific container registered to your Recovery Services
    # vault.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the container.
    # @param container_name [String] The container name used for this GET
    # operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, fabric_name, container_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'containerName' => container_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesBackup::Mgmt::V2016_06_01::Models::ProtectionContainerResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the containers registered to the Recovery Services vault.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param filter [String] The following equation is used to sort or filter the
    # containers registered to the vault. providerType eq {AzureIaasVM, MAB, DPM,
    # AzureBackupServer, AzureSql} and status eq {Unknown, NotRegistered,
    # Registered, Registering} and friendlyName eq {containername} and
    # backupManagementType eq {AzureIaasVM, MAB, DPM, AzureBackupServer, AzureSql}.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectionContainerResourceList] operation results.
    #
    def list(vault_name, resource_group_name, filter:nil, custom_headers:nil)
      response = list_async(vault_name, resource_group_name, filter:filter, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the containers registered to the Recovery Services vault.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param filter [String] The following equation is used to sort or filter the
    # containers registered to the vault. providerType eq {AzureIaasVM, MAB, DPM,
    # AzureBackupServer, AzureSql} and status eq {Unknown, NotRegistered,
    # Registered, Registering} and friendlyName eq {containername} and
    # backupManagementType eq {AzureIaasVM, MAB, DPM, AzureBackupServer, AzureSql}.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(vault_name, resource_group_name, filter:nil, custom_headers:nil)
      list_async(vault_name, resource_group_name, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Lists the containers registered to the Recovery Services vault.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param filter [String] The following equation is used to sort or filter the
    # containers registered to the vault. providerType eq {AzureIaasVM, MAB, DPM,
    # AzureBackupServer, AzureSql} and status eq {Unknown, NotRegistered,
    # Registered, Registering} and friendlyName eq {containername} and
    # backupManagementType eq {AzureIaasVM, MAB, DPM, AzureBackupServer, AzureSql}.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(vault_name, resource_group_name, filter:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupProtectionContainers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesBackup::Mgmt::V2016_06_01::Models::ProtectionContainerResourceList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Discovers the containers in the subscription that can be protected in a
    # Recovery Services vault. This is an asynchronous operation. To learn the
    # status of the operation, use the GetRefreshOperationResult API.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the container.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def refresh(vault_name, resource_group_name, fabric_name, custom_headers:nil)
      response = refresh_async(vault_name, resource_group_name, fabric_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Discovers the containers in the subscription that can be protected in a
    # Recovery Services vault. This is an asynchronous operation. To learn the
    # status of the operation, use the GetRefreshOperationResult API.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the container.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def refresh_with_http_info(vault_name, resource_group_name, fabric_name, custom_headers:nil)
      refresh_async(vault_name, resource_group_name, fabric_name, custom_headers:custom_headers).value!
    end

    #
    # Discovers the containers in the subscription that can be protected in a
    # Recovery Services vault. This is an asynchronous operation. To learn the
    # status of the operation, use the GetRefreshOperationResult API.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the container.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def refresh_async(vault_name, resource_group_name, fabric_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/refreshContainers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Unregisters the given container from your Recovery Services vault.
    #
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param identity_name [String] Name of the protection container to unregister.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def unregister(resource_group_name, vault_name, identity_name, custom_headers:nil)
      response = unregister_async(resource_group_name, vault_name, identity_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Unregisters the given container from your Recovery Services vault.
    #
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param identity_name [String] Name of the protection container to unregister.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def unregister_with_http_info(resource_group_name, vault_name, identity_name, custom_headers:nil)
      unregister_async(resource_group_name, vault_name, identity_name, custom_headers:custom_headers).value!
    end

    #
    # Unregisters the given container from your Recovery Services vault.
    #
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param identity_name [String] Name of the protection container to unregister.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def unregister_async(resource_group_name, vault_name, identity_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'identity_name is nil' if identity_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/registeredIdentities/{identityName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'vaultName' => vault_name,'identityName' => identity_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
