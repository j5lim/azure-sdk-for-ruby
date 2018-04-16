# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  #
  # You use the API to scan your content as it is generated. Content Moderator
  # then processes your content and sends the results along with relevant
  # information either back to your systems or to the built-in review tool. You
  # can use this information to take decisions e.g. take it down, send to human
  # judge, etc.
  #
  # When using the API, images need to have a minimum of 128 pixels and a
  # maximum file size of 4MB.
  # Text can be at most 1024 characters long.
  # If the content passed to the text API or the image API exceeds the size
  # limits, the API will return an error code that informs about the issue.
  #
  # This API is currently available in:
  #
  # * West US - westus.api.cognitive.microsoft.com
  # * East US 2 - eastus2.api.cognitive.microsoft.com
  # * West Central US - westcentralus.api.cognitive.microsoft.com
  # * West Europe - westeurope.api.cognitive.microsoft.com
  # * Southeast Asia - southeastasia.api.cognitive.microsoft.com .
  #
  class ListManagementTerm
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ListManagementTerm class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContentModeratorClient] reference to the ContentModeratorClient
    attr_reader :client

    #
    # Add a term to the term list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param term [String] Term to be deleted
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def add_term(list_id, term, language, custom_headers:nil)
      response = add_term_async(list_id, term, language, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add a term to the term list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param term [String] Term to be deleted
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_term_with_http_info(list_id, term, language, custom_headers:nil)
      add_term_async(list_id, term, language, custom_headers:custom_headers).value!
    end

    #
    # Add a term to the term list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param term [String] Term to be deleted
    # @param language [String] Language of the terms.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_term_async(list_id, term, language, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'term is nil' if term.nil?
      fail ArgumentError, 'language is nil' if language.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}/terms/{term}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id,'term' => term},
          query_params: {'language' => language},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Deletes a term from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param term [String] Term to be deleted
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [String] operation results.
    #
    def delete_term(list_id, term, language, custom_headers:nil)
      response = delete_term_async(list_id, term, language, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes a term from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param term [String] Term to be deleted
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_term_with_http_info(list_id, term, language, custom_headers:nil)
      delete_term_async(list_id, term, language, custom_headers:custom_headers).value!
    end

    #
    # Deletes a term from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param term [String] Term to be deleted
    # @param language [String] Language of the terms.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_term_async(list_id, term, language, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'term is nil' if term.nil?
      fail ArgumentError, 'language is nil' if language.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}/terms/{term}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id,'term' => term},
          query_params: {'language' => language},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 204
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'String'
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
    # Gets all terms from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param offset [Integer] The pagination start index.
    # @param limit [Integer] The max limit.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Terms] operation results.
    #
    def get_all_terms(list_id, language, offset:nil, limit:nil, custom_headers:nil)
      response = get_all_terms_async(list_id, language, offset:offset, limit:limit, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all terms from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param offset [Integer] The pagination start index.
    # @param limit [Integer] The max limit.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_all_terms_with_http_info(list_id, language, offset:nil, limit:nil, custom_headers:nil)
      get_all_terms_async(list_id, language, offset:offset, limit:limit, custom_headers:custom_headers).value!
    end

    #
    # Gets all terms from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param offset [Integer] The pagination start index.
    # @param limit [Integer] The max limit.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_all_terms_async(list_id, language, offset:nil, limit:nil, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'language is nil' if language.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}/terms'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          query_params: {'language' => language,'offset' => offset,'limit' => limit},
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
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms.mapper()
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
    # Deletes all terms from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [String] operation results.
    #
    def delete_all_terms(list_id, language, custom_headers:nil)
      response = delete_all_terms_async(list_id, language, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes all terms from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_all_terms_with_http_info(list_id, language, custom_headers:nil)
      delete_all_terms_async(list_id, language, custom_headers:custom_headers).value!
    end

    #
    # Deletes all terms from the list with list Id equal to the list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_all_terms_async(list_id, language, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'language is nil' if language.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}/terms'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          query_params: {'language' => language},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 204
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'String'
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

  end
end