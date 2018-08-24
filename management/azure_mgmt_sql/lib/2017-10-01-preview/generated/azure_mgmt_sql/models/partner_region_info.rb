# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # Partner region information for the failover group.
    #
    class PartnerRegionInfo

      include MsRestAzure

      # @return [String] Geo location of the partner managed instances.
      attr_accessor :location

      # @return [InstanceFailoverGroupReplicationRole] Replication role of the
      # partner managed instances. Possible values include: 'Primary',
      # 'Secondary'
      attr_accessor :replication_role


      #
      # Mapper for PartnerRegionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartnerRegionInfo',
          type: {
            name: 'Composite',
            class_name: 'PartnerRegionInfo',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              replication_role: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'replicationRole',
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