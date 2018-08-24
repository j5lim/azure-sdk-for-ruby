# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # The target of the event.
    #
    class ContainerRegistryEventTarget

      include MsRestAzure

      # @return [String] The MIME type of the referenced object.
      attr_accessor :media_type

      # @return [Integer] The number of bytes of the content. Same as Length
      # field.
      attr_accessor :size

      # @return [String] The digest of the content, as defined by the Registry
      # V2 HTTP API Specification.
      attr_accessor :digest

      # @return [Integer] The number of bytes of the content. Same as Size
      # field.
      attr_accessor :length

      # @return [String] The repository name.
      attr_accessor :repository

      # @return [String] The direct URL to the content.
      attr_accessor :url

      # @return [String] The tag name.
      attr_accessor :tag


      #
      # Mapper for ContainerRegistryEventTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerRegistryEventTarget',
          type: {
            name: 'Composite',
            class_name: 'ContainerRegistryEventTarget',
            model_properties: {
              media_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mediaType',
                type: {
                  name: 'String'
                }
              },
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'Number'
                }
              },
              digest: {
                client_side_validation: true,
                required: false,
                serialized_name: 'digest',
                type: {
                  name: 'String'
                }
              },
              length: {
                client_side_validation: true,
                required: false,
                serialized_name: 'length',
                type: {
                  name: 'Number'
                }
              },
              repository: {
                client_side_validation: true,
                required: false,
                serialized_name: 'repository',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tag',
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
