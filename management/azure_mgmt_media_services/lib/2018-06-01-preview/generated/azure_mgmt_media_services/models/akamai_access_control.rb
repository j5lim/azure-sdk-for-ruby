# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Akamai access control
    #
    class AkamaiAccessControl

      include MsRestAzure

      # @return [Array<AkamaiSignatureHeaderAuthenticationKey>] authentication
      # key list
      attr_accessor :akamai_signature_header_authentication_key_list


      #
      # Mapper for AkamaiAccessControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AkamaiAccessControl',
          type: {
            name: 'Composite',
            class_name: 'AkamaiAccessControl',
            model_properties: {
              akamai_signature_header_authentication_key_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'akamaiSignatureHeaderAuthenticationKeyList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AkamaiSignatureHeaderAuthenticationKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AkamaiSignatureHeaderAuthenticationKey'
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
