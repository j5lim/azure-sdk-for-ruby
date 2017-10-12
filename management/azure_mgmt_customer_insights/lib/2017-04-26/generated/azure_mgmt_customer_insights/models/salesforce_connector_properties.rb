# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # The Salesforce connector properties.
    #
    class SalesforceConnectorProperties

      include MsRestAzure

      # @return [SalesforceDiscoverSetting] The user settings.
      attr_accessor :usersetting

      # @return [Array<SalesforceTable>] The Salesforce tables.
      attr_accessor :salesforcetables


      #
      # Mapper for SalesforceConnectorProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SalesforceConnectorProperties',
          type: {
            name: 'Composite',
            class_name: 'SalesforceConnectorProperties',
            model_properties: {
              usersetting: {
                required: true,
                serialized_name: 'usersetting',
                type: {
                  name: 'Composite',
                  class_name: 'SalesforceDiscoverSetting'
                }
              },
              salesforcetables: {
                required: true,
                serialized_name: 'salesforcetables',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SalesforceTableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SalesforceTable'
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
