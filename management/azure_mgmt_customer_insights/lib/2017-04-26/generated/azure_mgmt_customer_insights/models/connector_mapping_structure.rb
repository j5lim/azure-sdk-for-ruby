# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # Connector mapping property structure.
    #
    class ConnectorMappingStructure

      include MsRestAzure

      # @return [String] The property name of the mapping entity.
      attr_accessor :property_name

      # @return [String] The column name of the import file.
      attr_accessor :column_name

      # @return [String] Custom format specifier for input parsing.
      attr_accessor :custom_format_specifier

      # @return [Boolean] Indicates if the column is encrypted.
      attr_accessor :is_encrypted


      #
      # Mapper for ConnectorMappingStructure class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectorMappingStructure',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMappingStructure',
            model_properties: {
              property_name: {
                required: true,
                serialized_name: 'propertyName',
                type: {
                  name: 'String'
                }
              },
              column_name: {
                required: true,
                serialized_name: 'columnName',
                type: {
                  name: 'String'
                }
              },
              custom_format_specifier: {
                required: false,
                serialized_name: 'customFormatSpecifier',
                type: {
                  name: 'String'
                }
              },
              is_encrypted: {
                required: false,
                serialized_name: 'isEncrypted',
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
