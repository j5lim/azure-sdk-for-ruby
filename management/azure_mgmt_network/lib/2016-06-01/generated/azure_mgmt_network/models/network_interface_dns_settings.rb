# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_06_01
  module Models
    #
    # Dns settings of a network interface
    #
    class NetworkInterfaceDnsSettings

      include MsRestAzure

      # @return [Array<String>] Gets or sets list of DNS servers IP addresses
      attr_accessor :dns_servers

      # @return [Array<String>] Gets or sets list of Applied DNS servers IP
      # addresses
      attr_accessor :applied_dns_servers

      # @return [String] Gets or sets the internal DNS name
      attr_accessor :internal_dns_name_label

      # @return [String] Gets or sets the internal fqdn.
      attr_accessor :internal_fqdn

      # @return [String] Gets or sets internal domain name suffix of the NIC.
      attr_accessor :internal_domain_name_suffix


      #
      # Mapper for NetworkInterfaceDnsSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkInterfaceDnsSettings',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceDnsSettings',
            model_properties: {
              dns_servers: {
                required: false,
                serialized_name: 'dnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              applied_dns_servers: {
                required: false,
                serialized_name: 'appliedDnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              internal_dns_name_label: {
                required: false,
                serialized_name: 'internalDnsNameLabel',
                type: {
                  name: 'String'
                }
              },
              internal_fqdn: {
                required: false,
                serialized_name: 'internalFqdn',
                type: {
                  name: 'String'
                }
              },
              internal_domain_name_suffix: {
                required: false,
                serialized_name: 'internalDomainNameSuffix',
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
