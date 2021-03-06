# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  #
  # Automation Client
  #
  class Fields
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Fields class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AutomationClient] reference to the AutomationClient
    attr_reader :client

    #
    # Retrieve a list of fields of a given type identified by module name.
    #
    # @param automation_account_name [String] The automation account name.
    # @param module_name [String] The name of module.
    # @param type_name [String] The name of type.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TypeFieldListResult] operation results.
    #
    def list_by_type(automation_account_name, module_name, type_name, custom_headers:nil)
      response = list_by_type_async(automation_account_name, module_name, type_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve a list of fields of a given type identified by module name.
    #
    # @param automation_account_name [String] The automation account name.
    # @param module_name [String] The name of module.
    # @param type_name [String] The name of type.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_type_with_http_info(automation_account_name, module_name, type_name, custom_headers:nil)
      list_by_type_async(automation_account_name, module_name, type_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieve a list of fields of a given type identified by module name.
    #
    # @param automation_account_name [String] The automation account name.
    # @param module_name [String] The name of module.
    # @param type_name [String] The name of type.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_type_async(automation_account_name, module_name, type_name, custom_headers:nil)
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, "'@client.resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !@client.resource_group_name.nil? && @client.resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'module_name is nil' if module_name.nil?
      fail ArgumentError, 'type_name is nil' if type_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/modules/{moduleName}/types/{typeName}/fields'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => @client.resource_group_name,'automationAccountName' => automation_account_name,'moduleName' => module_name,'typeName' => type_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::TypeFieldListResult.mapper()
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
