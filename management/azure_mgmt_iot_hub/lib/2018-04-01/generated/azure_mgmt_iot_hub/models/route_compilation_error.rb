# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_04_01
  module Models
    #
    # Compilation error when evaluating route
    #
    class RouteCompilationError

      include MsRestAzure

      # @return [String] Route error message
      attr_accessor :message

      # @return [RouteErrorSeverity] Severity of the route error. Possible
      # values include: 'error', 'warning'
      attr_accessor :severity

      # @return [RouteErrorRange] Location where the route error happened
      attr_accessor :location


      #
      # Mapper for RouteCompilationError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RouteCompilationError',
          type: {
            name: 'Composite',
            class_name: 'RouteCompilationError',
            model_properties: {
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'severity',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'Composite',
                  class_name: 'RouteErrorRange'
                }
              }
            }
          }
        }
      end
    end
  end
end
