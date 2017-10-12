# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis::Api_2016_04_01
  module Models
    #
    # Parameters for Redis import operation.
    #
    class ImportRDBParameters

      include MsRestAzure

      # @return [String] File format.
      attr_accessor :format

      # @return [Array<String>] files to import.
      attr_accessor :files


      #
      # Mapper for ImportRDBParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImportRDBParameters',
          type: {
            name: 'Composite',
            class_name: 'ImportRDBParameters',
            model_properties: {
              format: {
                required: false,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              files: {
                required: true,
                serialized_name: 'files',
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
              }
            }
          }
        }
      end
    end
  end
end
