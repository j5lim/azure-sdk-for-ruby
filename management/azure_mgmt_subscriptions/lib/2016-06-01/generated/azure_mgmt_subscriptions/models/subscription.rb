# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Subscriptions::Api_2016_06_01
  module Models
    #
    # Subscription information.
    #
    class Subscription

      include MsRestAzure

      # @return [String] The fully qualified ID for the subscription. For
      # example, /subscriptions/00000000-0000-0000-0000-000000000000.
      attr_accessor :id

      # @return [String] The subscription ID.
      attr_accessor :subscription_id

      # @return [String] The subscription display name.
      attr_accessor :display_name

      # @return [SubscriptionState] The subscription state. Possible values are
      # Enabled, Warned, PastDue, Disabled, and Deleted. Possible values
      # include: 'Enabled', 'Warned', 'PastDue', 'Disabled', 'Deleted'
      attr_accessor :state

      # @return [SubscriptionPolicies] The subscription policies.
      attr_accessor :subscription_policies

      # @return [String] The authorization source of the request. Valid values
      # are one or more combinations of Legacy, RoleBased, Bypassed, Direct and
      # Management. For example, 'Legacy, RoleBased'.
      attr_accessor :authorization_source


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
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                read_only: true,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                read_only: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'SubscriptionState'
                }
              },
              subscription_policies: {
                required: false,
                serialized_name: 'subscriptionPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'SubscriptionPolicies'
                }
              },
              authorization_source: {
                required: false,
                serialized_name: 'authorizationSource',
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
