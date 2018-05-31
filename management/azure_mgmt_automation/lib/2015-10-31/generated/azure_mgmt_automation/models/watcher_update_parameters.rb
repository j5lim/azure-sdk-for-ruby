# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Model object.
    #
    #
    class WatcherUpdateParameters

      include MsRestAzure

      # @return [Integer] Gets or sets the frequency at which the watcher is
      # invoked.
      attr_accessor :execution_frequency_in_seconds

      # @return [String] Gets or sets the name of the resource.
      attr_accessor :name


      #
      # Mapper for WatcherUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WatcherUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'WatcherUpdateParameters',
            model_properties: {
              execution_frequency_in_seconds: {
                required: false,
                serialized_name: 'properties.executionFrequencyInSeconds',
                type: {
                  name: 'Number'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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