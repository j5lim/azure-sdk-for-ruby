# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search::Api_2015_08_19
  module Models
    #
    # Defines the SKU of an Azure Search Service, which determines price tier
    # and capacity limits.
    #
    class Sku

      include MsRestAzure

      # @return [SkuName] The SKU of the Search service. Valid values include:
      # 'free': Shared service. 'basic': Dedicated service with up to 3
      # replicas. 'standard': Dedicated service with up to 12 partitions and 12
      # replicas. 'standard2': Similar to standard, but with more capacity per
      # search unit. 'standard3': Offers maximum capacity per search unit with
      # up to 12 partitions and 12 replicas (or up to 3 partitions with more
      # indexes if you also set the hostingMode property to 'highDensity').
      # Possible values include: 'free', 'basic', 'standard', 'standard2',
      # 'standard3'
      attr_accessor :name


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Enum',
                  module: 'SkuName'
                }
              }
            }
          }
        }
      end
    end
  end
end
