# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # The category1 score details of the text. <a
    # href="https://aka.ms/textClassifyCategories">Click here</a> for more
    # details on category classification.
    #
    class ClassificationCategory1

      include MsRestAzure

      # @return [Float] The category1 score.
      attr_accessor :score


      #
      # Mapper for ClassificationCategory1 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Classification_Category1',
          type: {
            name: 'Composite',
            class_name: 'ClassificationCategory1',
            model_properties: {
              score: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Score',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
