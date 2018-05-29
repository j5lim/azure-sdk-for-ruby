# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  #
  # Network Client
  #
  class LocalNetworkGateways
    include MsRestAzure

    #
    # Creates and initializes a new instance of the LocalNetworkGateways class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # The Put LocalNetworkGateway operation creates/updates a local network gateway
    # in the specified resource group through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param parameters [LocalNetworkGateway] Parameters supplied to the Begin
    # Create or update Local Network Gateway operation through Network resource
    # provider.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LocalNetworkGateway] operation results.
    #
    def create_or_update(resource_group_name, local_network_gateway_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, local_network_gateway_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param parameters [LocalNetworkGateway] Parameters supplied to the Begin
    # Create or update Local Network Gateway operation through Network resource
    # provider.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, local_network_gateway_name, parameters, custom_headers = nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, local_network_gateway_name, parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::LocalNetworkGateway.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The Get LocalNetworkGateway operation retrieves information about the
    # specified local network gateway through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LocalNetworkGateway] operation results.
    #
    def get(resource_group_name, local_network_gateway_name, custom_headers = nil)
      response = get_async(resource_group_name, local_network_gateway_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The Get LocalNetworkGateway operation retrieves information about the
    # specified local network gateway through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, local_network_gateway_name, custom_headers = nil)
      get_async(resource_group_name, local_network_gateway_name, custom_headers).value!
    end

    #
    # The Get LocalNetworkGateway operation retrieves information about the
    # specified local network gateway through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, local_network_gateway_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'local_network_gateway_name is nil' if local_network_gateway_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/localNetworkGateways/{localNetworkGatewayName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'localNetworkGatewayName' => local_network_gateway_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::LocalNetworkGateway.mapper()
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
    # The Delete LocalNetworkGateway operation deletes the specifed local network
    # Gateway through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, local_network_gateway_name, custom_headers = nil)
      response = delete_async(resource_group_name, local_network_gateway_name, custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, local_network_gateway_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(resource_group_name, local_network_gateway_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The List LocalNetworkGateways opertion retrieves all the local network
    # gateways stored.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<LocalNetworkGateway>] operation results.
    #
    def list(resource_group_name, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, custom_headers)
      first_page.get_all_items
    end

    #
    # The List LocalNetworkGateways opertion retrieves all the local network
    # gateways stored.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, custom_headers = nil)
      list_async(resource_group_name, custom_headers).value!
    end

    #
    # The List LocalNetworkGateways opertion retrieves all the local network
    # gateways stored.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/localNetworkGateways'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::LocalNetworkGatewayListResult.mapper()
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
    # The Put LocalNetworkGateway operation creates/updates a local network gateway
    # in the specified resource group through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param parameters [LocalNetworkGateway] Parameters supplied to the Begin
    # Create or update Local Network Gateway operation through Network resource
    # provider.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LocalNetworkGateway] operation results.
    #
    def begin_create_or_update(resource_group_name, local_network_gateway_name, parameters, custom_headers = nil)
      response = begin_create_or_update_async(resource_group_name, local_network_gateway_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The Put LocalNetworkGateway operation creates/updates a local network gateway
    # in the specified resource group through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param parameters [LocalNetworkGateway] Parameters supplied to the Begin
    # Create or update Local Network Gateway operation through Network resource
    # provider.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, local_network_gateway_name, parameters, custom_headers = nil)
      begin_create_or_update_async(resource_group_name, local_network_gateway_name, parameters, custom_headers).value!
    end

    #
    # The Put LocalNetworkGateway operation creates/updates a local network gateway
    # in the specified resource group through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param parameters [LocalNetworkGateway] Parameters supplied to the Begin
    # Create or update Local Network Gateway operation through Network resource
    # provider.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, local_network_gateway_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'local_network_gateway_name is nil' if local_network_gateway_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::Network::Mgmt::V2016_03_30::Models::LocalNetworkGateway.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/localNetworkGateways/{localNetworkGatewayName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'localNetworkGatewayName' => local_network_gateway_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::LocalNetworkGateway.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::LocalNetworkGateway.mapper()
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
    # The Delete LocalNetworkGateway operation deletes the specifed local network
    # Gateway through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, local_network_gateway_name, custom_headers = nil)
      response = begin_delete_async(resource_group_name, local_network_gateway_name, custom_headers).value!
      nil
    end

    #
    # The Delete LocalNetworkGateway operation deletes the specifed local network
    # Gateway through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, local_network_gateway_name, custom_headers = nil)
      begin_delete_async(resource_group_name, local_network_gateway_name, custom_headers).value!
    end

    #
    # The Delete LocalNetworkGateway operation deletes the specifed local network
    # Gateway through Network resource provider.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param local_network_gateway_name [String] The name of the local network
    # gateway.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, local_network_gateway_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'local_network_gateway_name is nil' if local_network_gateway_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/localNetworkGateways/{localNetworkGatewayName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'localNetworkGatewayName' => local_network_gateway_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # The List LocalNetworkGateways opertion retrieves all the local network
    # gateways stored.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LocalNetworkGatewayListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The List LocalNetworkGateways opertion retrieves all the local network
    # gateways stored.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # The List LocalNetworkGateways opertion retrieves all the local network
    # gateways stored.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
            result_mapper = Azure::Network::Mgmt::V2016_03_30::Models::LocalNetworkGatewayListResult.mapper()
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
    # The List LocalNetworkGateways opertion retrieves all the local network
    # gateways stored.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LocalNetworkGatewayListResult] which provide lazy access to pages of
    # the response.
    #
    def list_as_lazy(resource_group_name, custom_headers = nil)
      response = list_async(resource_group_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
