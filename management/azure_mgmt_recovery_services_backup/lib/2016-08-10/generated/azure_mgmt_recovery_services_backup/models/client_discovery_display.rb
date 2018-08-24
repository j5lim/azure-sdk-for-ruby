# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_08_10
  module Models
    #
    # Localized display information of an operation.
    #
    class ClientDiscoveryDisplay

      include MsRestAzure

      # @return [String] Name of the provider for display purposes
      attr_accessor :provider

      # @return [String] ResourceType for which this Operation can be
      # performed.
      attr_accessor :resource

      # @return [String] Operations Name itself.
      attr_accessor :operation

      # @return [String] Description of the operation having details of what
      # operation is about.
      attr_accessor :description


      #
      # Mapper for ClientDiscoveryDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClientDiscoveryDisplay',
          type: {
            name: 'Composite',
            class_name: 'ClientDiscoveryDisplay',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
