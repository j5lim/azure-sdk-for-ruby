# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2015_05_01_preview
  module Models
    #
    # Properties of the column in the table of database full schema.
    #
    class SyncFullSchemaTableColumn

      include MsRestAzure

      # @return [String] Data size of the column.
      attr_accessor :data_size

      # @return [String] Data type of the column.
      attr_accessor :data_type

      # @return [String] Error id of the column.
      attr_accessor :error_id

      # @return [Boolean] If there is error in the table.
      attr_accessor :has_error

      # @return [Boolean] If it is the primary key of the table.
      attr_accessor :is_primary_key

      # @return [String] Name of the column.
      attr_accessor :name

      # @return [String] Quoted name of the column.
      attr_accessor :quoted_name


      #
      # Mapper for SyncFullSchemaTableColumn class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncFullSchemaTableColumn',
          type: {
            name: 'Composite',
            class_name: 'SyncFullSchemaTableColumn',
            model_properties: {
              data_size: {
                required: false,
                read_only: true,
                serialized_name: 'dataSize',
                type: {
                  name: 'String'
                }
              },
              data_type: {
                required: false,
                read_only: true,
                serialized_name: 'dataType',
                type: {
                  name: 'String'
                }
              },
              error_id: {
                required: false,
                read_only: true,
                serialized_name: 'errorId',
                type: {
                  name: 'String'
                }
              },
              has_error: {
                required: false,
                read_only: true,
                serialized_name: 'hasError',
                type: {
                  name: 'Boolean'
                }
              },
              is_primary_key: {
                required: false,
                read_only: true,
                serialized_name: 'isPrimaryKey',
                type: {
                  name: 'Boolean'
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
              quoted_name: {
                required: false,
                read_only: true,
                serialized_name: 'quotedName',
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
