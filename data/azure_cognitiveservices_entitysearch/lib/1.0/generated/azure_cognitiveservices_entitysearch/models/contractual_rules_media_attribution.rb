# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Defines a contractual rule for media attribution.
    #
    class ContractualRulesMediaAttribution < ContractualRulesAttribution

      include MsRestAzure


      def initialize
        @_type = "ContractualRules/MediaAttribution"
      end

      attr_accessor :_type

      # @return [String] The URL that you use to create of hyperlink of the
      # media content. For example, if the target is an image, you would use
      # the URL to make the image clickable.
      attr_accessor :url


      #
      # Mapper for ContractualRulesMediaAttribution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContractualRules/MediaAttribution',
          type: {
            name: 'Composite',
            class_name: 'ContractualRulesMediaAttribution',
            model_properties: {
              target_property_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetPropertyName',
                type: {
                  name: 'String'
                }
              },
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              must_be_close_to_content: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'mustBeCloseToContent',
                type: {
                  name: 'Boolean'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
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
