# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Domain recommendation search parameters.
    #
    class DomainRecommendationSearchParameters

      include MsRestAzure

      # @return [String] Keywords to be used for generating domain
      # recommendations.
      attr_accessor :keywords

      # @return [Integer] Maximum number of recommendations.
      attr_accessor :max_domain_recommendations


      #
      # Mapper for DomainRecommendationSearchParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainRecommendationSearchParameters',
          type: {
            name: 'Composite',
            class_name: 'DomainRecommendationSearchParameters',
            model_properties: {
              keywords: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keywords',
                type: {
                  name: 'String'
                }
              },
              max_domain_recommendations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxDomainRecommendations',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
