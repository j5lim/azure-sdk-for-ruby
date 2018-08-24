# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # An Itsm receiver.
    #
    class ItsmReceiver

      include MsRestAzure

      # @return [String] The name of the Itsm receiver. Names must be unique
      # across all receivers within an action group.
      attr_accessor :name

      # @return [String] OMS LA instance identifier.
      attr_accessor :workspace_id

      # @return [String] Unique identification of ITSM connection among
      # multiple defined in above workspace.
      attr_accessor :connection_id

      # @return [String] JSON blob for the configurations of the ITSM action.
      # CreateMultipleWorkItems option will be part of this blob as well.
      attr_accessor :ticket_configuration

      # @return [String] Region in which workspace resides. Supported
      # values:'centralindia','japaneast','southeastasia','australiasoutheast','uksouth','westcentralus','canadacentral','eastus','westeurope'
      attr_accessor :region


      #
      # Mapper for ItsmReceiver class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ItsmReceiver',
          type: {
            name: 'Composite',
            class_name: 'ItsmReceiver',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              workspace_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'workspaceId',
                type: {
                  name: 'String'
                }
              },
              connection_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'connectionId',
                type: {
                  name: 'String'
                }
              },
              ticket_configuration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ticketConfiguration',
                type: {
                  name: 'String'
                }
              },
              region: {
                client_side_validation: true,
                required: true,
                serialized_name: 'region',
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
