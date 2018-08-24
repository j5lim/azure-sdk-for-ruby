# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  #
  # Azure Event Hubs client for managing Event Hubs Cluster, IPFilter Rules and
  # VirtualNetworkRules resources.
  #
  class Configuration
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Configuration class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [EventHub2018PreviewManagementClient] reference to the EventHub2018PreviewManagementClient
    attr_reader :client

    #
    # Replace all specified Event Hubs Cluster settings with those contained in the
    # request body. Leaves the settings not specified in the request body
    # unmodified.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param cluster_name [String] The name of the Event Hubs Cluster.
    # @param parameters [ClusterQuotaConfigurationProperties] Parameters for
    # creating an Event Hubs Cluster resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ClusterQuotaConfigurationProperties] operation results.
    #
    def patch(resource_group_name, cluster_name, parameters, custom_headers:nil)
      response = patch_async(resource_group_name, cluster_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Replace all specified Event Hubs Cluster settings with those contained in the
    # request body. Leaves the settings not specified in the request body
    # unmodified.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param cluster_name [String] The name of the Event Hubs Cluster.
    # @param parameters [ClusterQuotaConfigurationProperties] Parameters for
    # creating an Event Hubs Cluster resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def patch_with_http_info(resource_group_name, cluster_name, parameters, custom_headers:nil)
      patch_async(resource_group_name, cluster_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Replace all specified Event Hubs Cluster settings with those contained in the
    # request body. Leaves the settings not specified in the request body
    # unmodified.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param cluster_name [String] The name of the Event Hubs Cluster.
    # @param parameters [ClusterQuotaConfigurationProperties] Parameters for
    # creating an Event Hubs Cluster resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def patch_async(resource_group_name, cluster_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, "'cluster_name' should satisfy the constraint - 'MaxLength': '50'" if !cluster_name.nil? && cluster_name.length > 50
      fail ArgumentError, "'cluster_name' should satisfy the constraint - 'MinLength': '6'" if !cluster_name.nil? && cluster_name.length < 6
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/clusters/{clusterName}/quotaConfiguration/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties.mapper()
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
    # Get all Event Hubs Cluster settings - a collection of key/value pairs which
    # represent the quotas and settings imposed on the cluster.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param cluster_name [String] The name of the Event Hubs Cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ClusterQuotaConfigurationProperties] operation results.
    #
    def get(resource_group_name, cluster_name, custom_headers:nil)
      response = get_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all Event Hubs Cluster settings - a collection of key/value pairs which
    # represent the quotas and settings imposed on the cluster.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param cluster_name [String] The name of the Event Hubs Cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, cluster_name, custom_headers:nil)
      get_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
    end

    #
    # Get all Event Hubs Cluster settings - a collection of key/value pairs which
    # represent the quotas and settings imposed on the cluster.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param cluster_name [String] The name of the Event Hubs Cluster.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, cluster_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, "'cluster_name' should satisfy the constraint - 'MaxLength': '50'" if !cluster_name.nil? && cluster_name.length > 50
      fail ArgumentError, "'cluster_name' should satisfy the constraint - 'MinLength': '6'" if !cluster_name.nil? && cluster_name.length < 6
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/clusters/{clusterName}/quotaConfiguration/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
