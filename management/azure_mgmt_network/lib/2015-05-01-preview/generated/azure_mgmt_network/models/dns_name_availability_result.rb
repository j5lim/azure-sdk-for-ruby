# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2015_05_01_preview
  module Models
    #
    # Response for CheckDnsNameAvailability Api servive call
    #
    class DnsNameAvailabilityResult

      include MsRestAzure

      # @return [Boolean] Domain availability (True/False)
      attr_accessor :available


      #
      # Mapper for DnsNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DnsNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'DnsNameAvailabilityResult',
            model_properties: {
              available: {
                required: false,
                serialized_name: 'available',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
