# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Certificate renewal input.
    #
    class RenewCertificateInput

      include MsRestAzure

      # @return [RenewCertificateInputProperties] Renew certificate input
      # properties.
      attr_accessor :properties


      #
      # Mapper for RenewCertificateInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RenewCertificateInput',
          type: {
            name: 'Composite',
            class_name: 'RenewCertificateInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RenewCertificateInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
