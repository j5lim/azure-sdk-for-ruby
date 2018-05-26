# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  #
  # Operational Insights Client
  #
  class Workspaces
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Workspaces class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [OperationalInsightsManagementClient] reference to the OperationalInsightsManagementClient
    attr_reader :client

    #
    # Get a list of workspaces which the current user has administrator privileges
    # and are not associated with an Azure Subscription. The subscriptionId
    # parameter in the Url is ignored.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_link_targets(custom_headers = nil)
      response = list_link_targets_async(custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a list of workspaces which the current user has administrator privileges
    # and are not associated with an Azure Subscription. The subscriptionId
    # parameter in the Url is ignored.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_link_targets_with_http_info(custom_headers = nil)
      list_link_targets_async(custom_headers).value!
    end

    #
    # Get a list of workspaces which the current user has administrator privileges
    # and are not associated with an Azure Subscription. The subscriptionId
    # parameter in the Url is ignored.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_link_targets_async(custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.OperationalInsights/linkTargets'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
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
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'LinkTargetElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'LinkTarget'
                    }
                }
              }
            }
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
    # Gets the schema for a given workspace.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchGetSchemaResponse] operation results.
    #
    def get_schema(resource_group_name, workspace_name, custom_headers = nil)
      response = get_schema_async(resource_group_name, workspace_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the schema for a given workspace.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_schema_with_http_info(resource_group_name, workspace_name, custom_headers = nil)
      get_schema_async(resource_group_name, workspace_name, custom_headers).value!
    end

    #
    # Gets the schema for a given workspace.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_schema_async(resource_group_name, workspace_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/schema'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchGetSchemaResponse.mapper()
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
    # Submit a search for a given workspace. The response will contain an id to
    # track the search. User can use the id to poll the search status and get the
    # full search result later if the search takes long time to finish.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param parameters [SearchParameters] The parameters required to execute a
    # search query.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchResultsResponse] operation results.
    #
    def get_search_results(resource_group_name, workspace_name, parameters, custom_headers = nil)
      response = get_search_results_async(resource_group_name, workspace_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param parameters [SearchParameters] The parameters required to execute a
    # search query.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def get_search_results_async(resource_group_name, workspace_name, parameters, custom_headers = nil)
      # Send request
      promise = begin_get_search_results_async(resource_group_name, workspace_name, parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchResultsResponse.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets updated search results for a given search query.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param id [String] The id of the search that will have results updated. You
    # can get the id from the response of the GetResults call.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchResultsResponse] operation results.
    #
    def update_search_results(resource_group_name, workspace_name, id, custom_headers = nil)
      response = update_search_results_async(resource_group_name, workspace_name, id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets updated search results for a given search query.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param id [String] The id of the search that will have results updated. You
    # can get the id from the response of the GetResults call.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_search_results_with_http_info(resource_group_name, workspace_name, id, custom_headers = nil)
      update_search_results_async(resource_group_name, workspace_name, id, custom_headers).value!
    end

    #
    # Gets updated search results for a given search query.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param id [String] The id of the search that will have results updated. You
    # can get the id from the response of the GetResults call.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_search_results_async(resource_group_name, workspace_name, id, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'id is nil' if id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/search/{id}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'id' => id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchResultsResponse.mapper()
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
    # Purges data in an Log Analytics workspace by a set of user-defined filters.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def purge(resource_group_name, workspace_name, custom_headers = nil)
      response = purge_async(resource_group_name, workspace_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def purge_async(resource_group_name, workspace_name, custom_headers = nil)
      # Send request
      promise = begin_purge_async(resource_group_name, workspace_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = {
            required: false,
            serialized_name: 'parsed_response',
            type: {
              name: 'Object'
            }
          }
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Submit a search for a given workspace. The response will contain an id to
    # track the search. User can use the id to poll the search status and get the
    # full search result later if the search takes long time to finish.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param parameters [SearchParameters] The parameters required to execute a
    # search query.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchResultsResponse] operation results.
    #
    def begin_get_search_results(resource_group_name, workspace_name, parameters, custom_headers = nil)
      response = begin_get_search_results_async(resource_group_name, workspace_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Submit a search for a given workspace. The response will contain an id to
    # track the search. User can use the id to poll the search status and get the
    # full search result later if the search takes long time to finish.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param parameters [SearchParameters] The parameters required to execute a
    # search query.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_get_search_results_with_http_info(resource_group_name, workspace_name, parameters, custom_headers = nil)
      begin_get_search_results_async(resource_group_name, workspace_name, parameters, custom_headers).value!
    end

    #
    # Submit a search for a given workspace. The response will contain an id to
    # track the search. User can use the id to poll the search status and get the
    # full search result later if the search takes long time to finish.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param parameters [SearchParameters] The parameters required to execute a
    # search query.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_get_search_results_async(resource_group_name, workspace_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/search'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchResultsResponse.mapper()
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
    # Purges data in an Log Analytics workspace by a set of user-defined filters.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def begin_purge(resource_group_name, workspace_name, custom_headers = nil)
      response = begin_purge_async(resource_group_name, workspace_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Purges data in an Log Analytics workspace by a set of user-defined filters.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_purge_with_http_info(resource_group_name, workspace_name, custom_headers = nil)
      begin_purge_async(resource_group_name, workspace_name, custom_headers).value!
    end

    #
    # Purges data in an Log Analytics workspace by a set of user-defined filters.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics workspace name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_purge_async(resource_group_name, workspace_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, '@client.body is nil' if @client.body.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBody.mapper()
      request_content = @client.serialize(request_mapper,  @client.body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/purge'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'workspaceName' => workspace_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeStatusResponse.mapper()
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
