# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis::Api_2015_08_01
  module Models
    #
    # Redis cache access keys.
    #
    class RedisAccessKeys

      include MsRestAzure

      # @return [String] The current primary key that clients can use to
      # authenticate with Redis cache.
      attr_accessor :primary_key

      # @return [String] The current secondary key that clients can use to
      # authenticate with Redis cache.
      attr_accessor :secondary_key


      #
      # Mapper for RedisAccessKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisAccessKeys',
          type: {
            name: 'Composite',
            class_name: 'RedisAccessKeys',
            model_properties: {
              primary_key: {
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                serialized_name: 'secondaryKey',
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
