# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # The minimum per-database DTU capability.
    #
    class ElasticPoolPerDatabaseMinDtuCapability

      include MsRestAzure

      # @return [Integer] The maximum DTUs per database.
      attr_accessor :limit

      # @return [CapabilityStatus] The status of the capability. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status


      #
      # Mapper for ElasticPoolPerDatabaseMinDtuCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPoolPerDatabaseMinDtuCapability',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolPerDatabaseMinDtuCapability',
            model_properties: {
              limit: {
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
