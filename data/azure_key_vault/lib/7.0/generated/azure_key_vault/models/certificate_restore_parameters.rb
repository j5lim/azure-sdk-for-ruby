# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # The certificate restore parameters.
    #
    class CertificateRestoreParameters

      include MsRestAzure

      # @return The backup blob associated with a certificate bundle.
      attr_accessor :certificate_bundle_backup


      #
      # Mapper for CertificateRestoreParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateRestoreParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateRestoreParameters',
            model_properties: {
              certificate_bundle_backup: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Base64Url'
                }
              }
            }
          }
        }
      end
    end
  end
end
