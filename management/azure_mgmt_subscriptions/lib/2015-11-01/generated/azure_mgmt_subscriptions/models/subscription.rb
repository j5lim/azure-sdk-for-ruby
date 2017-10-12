# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Subscriptions::Api_2015_11_01
  module Models
    #
    # Subscription information.
    #
    class Subscription

      include MsRestAzure

      # @return [String] Gets or sets the ID of the resource
      # (/subscriptions/SubscriptionId).
      attr_accessor :id

      # @return [String] Gets or sets the subscription Id.
      attr_accessor :subscription_id

      # @return [String] Gets or sets the subscription display name
      attr_accessor :display_name

      # @return [String] Gets or sets the subscription state
      attr_accessor :state

      # @return [SubscriptionPolicies] Gets or sets the subscription policies.
      attr_accessor :subscription_policies


      #
      # Mapper for Subscription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Subscription',
          type: {
            name: 'Composite',
            class_name: 'Subscription',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              subscription_policies: {
                required: false,
                serialized_name: 'subscriptionPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'SubscriptionPolicies'
                }
              }
            }
          }
        }
      end
    end
  end
end
