# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_03_01
  module Models
    #
    # Public IP address resource.
    #
    class PublicIPAddress < Resource

      include MsRestAzure

      # @return [IPAllocationMethod] The public IP allocation method. Possible
      # values are: 'Static' and 'Dynamic'. Possible values include: 'Static',
      # 'Dynamic'
      attr_accessor :public_ipallocation_method

      # @return [IPVersion] The public IP address version. Possible values are:
      # 'IPv4' and 'IPv6'. Possible values include: 'IPv4', 'IPv6'
      attr_accessor :public_ipaddress_version

      # @return [IPConfiguration]
      attr_accessor :ip_configuration

      # @return [PublicIPAddressDnsSettings] The FQDN of the DNS record
      # associated with the public IP address.
      attr_accessor :dns_settings

      # @return [String]
      attr_accessor :ip_address

      # @return [Integer] The idle timeout of the public IP address.
      attr_accessor :idle_timeout_in_minutes

      # @return [String] The resource GUID property of the public IP resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the PublicIP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for PublicIPAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PublicIPAddress',
          type: {
            name: 'Composite',
            class_name: 'PublicIPAddress',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              public_ipallocation_method: {
                required: false,
                serialized_name: 'properties.publicIPAllocationMethod',
                type: {
                  name: 'String'
                }
              },
              public_ipaddress_version: {
                required: false,
                serialized_name: 'properties.publicIPAddressVersion',
                type: {
                  name: 'String'
                }
              },
              ip_configuration: {
                required: false,
                read_only: true,
                serialized_name: 'properties.ipConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'IPConfiguration'
                }
              },
              dns_settings: {
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'PublicIPAddressDnsSettings'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'properties.ipAddress',
                type: {
                  name: 'String'
                }
              },
              idle_timeout_in_minutes: {
                required: false,
                serialized_name: 'properties.idleTimeoutInMinutes',
                type: {
                  name: 'Number'
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
