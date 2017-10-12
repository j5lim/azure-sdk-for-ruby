# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor::Api_2016_03_01
  module Models
    #
    # Specifies the action to send email when the rule condition is evaluated.
    # The discriminator is always RuleEmailAction in this case.
    #
    class RuleEmailAction < RuleAction

      include MsRestAzure


      def initialize
        @odatatype = "Microsoft.Azure.Management.Insights.Models.RuleEmailAction"
      end

      attr_accessor :odatatype

      # @return [Boolean] Whether the administrators (service and
      # co-administrators) of the service should be notified when the alert is
      # activated.
      attr_accessor :send_to_service_owners

      # @return [Array<String>] the list of administrator's custom email
      # addresses to notify of the activation of the alert.
      attr_accessor :custom_emails


      #
      # Mapper for RuleEmailAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.RuleEmailAction',
          type: {
            name: 'Composite',
            class_name: 'RuleEmailAction',
            model_properties: {
              odatatype: {
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              send_to_service_owners: {
                required: false,
                serialized_name: 'sendToServiceOwners',
                type: {
                  name: 'Boolean'
                }
              },
              custom_emails: {
                required: false,
                serialized_name: 'customEmails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
