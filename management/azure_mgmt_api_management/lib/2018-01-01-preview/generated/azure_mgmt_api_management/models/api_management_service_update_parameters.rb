# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Parameter supplied to Update Api Management Service.
    #
    class ApiManagementServiceUpdateParameters < ApimResource

      include MsRestAzure

      # @return [String] Email address from which the notification will be
      # sent.
      attr_accessor :notification_sender_email

      # @return [String] The current provisioning state of the API Management
      # service which can be one of the following:
      # Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
      attr_accessor :provisioning_state

      # @return [String] The provisioning state of the API Management service,
      # which is targeted by the long running operation started on the service.
      attr_accessor :target_provisioning_state

      # @return [DateTime] Creation UTC date of the API Management service.The
      # date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as
      # specified by the ISO 8601 standard.
      attr_accessor :created_at_utc

      # @return [String] Gateway URL of the API Management service.
      attr_accessor :gateway_url

      # @return [String] Gateway URL of the API Management service in the
      # Default Region.
      attr_accessor :gateway_regional_url

      # @return [String] Publisher portal endpoint Url of the API Management
      # service.
      attr_accessor :portal_url

      # @return [String] Management API endpoint URL of the API Management
      # service.
      attr_accessor :management_api_url

      # @return [String] SCM endpoint URL of the API Management service.
      attr_accessor :scm_url

      # @return [Array<HostnameConfiguration>] Custom hostname configuration of
      # the API Management service.
      attr_accessor :hostname_configurations

      # @return [Array<String>] Public Static Load Balanced IP addresses of the
      # API Management service in Primary region. Available only for Basic,
      # Standard and Premium SKU.
      attr_accessor :public_ipaddresses

      # @return [Array<String>] Private Static Load Balanced IP addresses of
      # the API Management service in Primary region which is deployed in an
      # Internal Virtual Network. Available only for Basic, Standard and
      # Premium SKU.
      attr_accessor :private_ipaddresses

      # @return [VirtualNetworkConfiguration] Virtual network configuration of
      # the API Management service.
      attr_accessor :virtual_network_configuration

      # @return [Array<AdditionalLocation>] Additional datacenter locations of
      # the API Management service.
      attr_accessor :additional_locations

      # @return [Hash{String => String}] Custom properties of the API
      # Management service. Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168`
      # will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0,
      # 1.1 and 1.2). Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11`
      # can be used to disable just TLS 1.1 and setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10`
      # can be used to disable TLS 1.0 on an API Management service.
      attr_accessor :custom_properties

      # @return [Array<CertificateConfiguration>] List of Certificates that
      # need to be installed in the API Management service. Max supported
      # certificates that can be installed is 10.
      attr_accessor :certificates

      # @return [VirtualNetworkType] The type of VPN in which API Managemet
      # service needs to be configured in. None (Default Value) means the API
      # Management service is not part of any Virtual Network, External means
      # the API Management deployment is set up inside a Virtual Network having
      # an Internet Facing Endpoint, and Internal means that API Management
      # deployment is setup inside a Virtual Network having an Intranet Facing
      # Endpoint only. Possible values include: 'None', 'External', 'Internal'.
      # Default value: 'None' .
      attr_accessor :virtual_network_type

      # @return [String] Publisher email.
      attr_accessor :publisher_email

      # @return [String] Publisher name.
      attr_accessor :publisher_name

      # @return [ApiManagementServiceSkuProperties] SKU properties of the API
      # Management service.
      attr_accessor :sku

      # @return [ApiManagementServiceIdentity] Managed service identity of the
      # Api Management service.
      attr_accessor :identity

      # @return [String] ETag of the resource.
      attr_accessor :etag


      #
      # Mapper for ApiManagementServiceUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceUpdateParameters',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              notification_sender_email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.notificationSenderEmail',
                constraints: {
                  MaxLength: 100
                },
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              target_provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.targetProvisioningState',
                type: {
                  name: 'String'
                }
              },
              created_at_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAtUtc',
                type: {
                  name: 'DateTime'
                }
              },
              gateway_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.gatewayUrl',
                type: {
                  name: 'String'
                }
              },
              gateway_regional_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.gatewayRegionalUrl',
                type: {
                  name: 'String'
                }
              },
              portal_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.portalUrl',
                type: {
                  name: 'String'
                }
              },
              management_api_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.managementApiUrl',
                type: {
                  name: 'String'
                }
              },
              scm_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.scmUrl',
                type: {
                  name: 'String'
                }
              },
              hostname_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostnameConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HostnameConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HostnameConfiguration'
                      }
                  }
                }
              },
              public_ipaddresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publicIPAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              private_ipaddresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateIPAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              virtual_network_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConfiguration'
                }
              },
              additional_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.additionalLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalLocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalLocation'
                      }
                  }
                }
              },
              custom_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CertificateConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CertificateConfiguration'
                      }
                  }
                }
              },
              virtual_network_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkType',
                default_value: 'None',
                type: {
                  name: 'String'
                }
              },
              publisher_email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publisherEmail',
                constraints: {
                  MaxLength: 100
                },
                type: {
                  name: 'String'
                }
              },
              publisher_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publisherName',
                constraints: {
                  MaxLength: 100
                },
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ApiManagementServiceSkuProperties'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ApiManagementServiceIdentity'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
