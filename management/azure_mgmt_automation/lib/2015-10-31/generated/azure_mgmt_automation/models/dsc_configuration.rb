# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # Definition of the configuration type.
    #
    class DscConfiguration < Resource

      include MsRestAzure

      # @return [DscConfigurationProvisioningState] Gets or sets the
      # provisioning state of the configuration. Possible values include:
      # 'Succeeded'
      attr_accessor :provisioning_state

      # @return [Integer] Gets or sets the job count of the configuration.
      attr_accessor :job_count

      # @return [Hash{String => DscConfigurationParameter}] Gets or sets the
      # configuration parameters.
      attr_accessor :parameters

      # @return [ContentSource] Gets or sets the source.
      attr_accessor :source

      # @return [DscConfigurationState] Gets or sets the state of the
      # configuration. Possible values include: 'New', 'Edit', 'Published'
      attr_accessor :state

      # @return [Boolean] Gets or sets verbose log option.
      attr_accessor :log_verbose

      # @return [DateTime] Gets or sets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description

      # @return [String] Gets or sets the etag of the resource.
      attr_accessor :etag


      #
      # Mapper for DscConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DscConfiguration',
            model_properties: {
              id: {
                required: false,
                read_only: true,
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
                required: true,
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
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'DscConfigurationProvisioningState'
                }
              },
              job_count: {
                required: false,
                serialized_name: 'properties.jobCount',
                type: {
                  name: 'Number'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'DscConfigurationParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DscConfigurationParameter'
                      }
                  }
                }
              },
              source: {
                required: false,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'ContentSource'
                }
              },
              state: {
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              log_verbose: {
                required: false,
                serialized_name: 'properties.logVerbose',
                type: {
                  name: 'Boolean'
                }
              },
              creation_time: {
                required: false,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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
