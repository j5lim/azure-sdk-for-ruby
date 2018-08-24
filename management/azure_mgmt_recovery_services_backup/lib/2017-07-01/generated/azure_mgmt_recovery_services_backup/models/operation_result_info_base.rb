# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Base class for operation result info.
    #
    class OperationResultInfoBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ExportJobsOperationResultInfo"] = "ExportJobsOperationResultInfo"
      @@discriminatorMap["OperationResultInfo"] = "OperationResultInfo"

      def initialize
        @objectType = "OperationResultInfoBase"
      end

      attr_accessor :objectType


      #
      # Mapper for OperationResultInfoBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResultInfoBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'OperationResultInfoBase',
            class_name: 'OperationResultInfoBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
