# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-01-19/generated/azure_mgmt_iot_hub/module_definition'
require 'ms_rest_azure'

module Azure::ARM::IotHub::Api_2017_01_19
  autoload :IotHubResource,                                     '2017-01-19/generated/azure_mgmt_iot_hub/iot_hub_resource.rb'
  autoload :IotHubClient,                                       '2017-01-19/generated/azure_mgmt_iot_hub/iot_hub_client.rb'

  module Models
    autoload :Resource,                                           '2017-01-19/generated/azure_mgmt_iot_hub/models/resource.rb'
    autoload :SharedAccessSignatureAuthorizationRule,             '2017-01-19/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule.rb'
    autoload :SharedAccessSignatureAuthorizationRuleListResult,   '2017-01-19/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule_list_result.rb'
    autoload :EventHubProperties,                                 '2017-01-19/generated/azure_mgmt_iot_hub/models/event_hub_properties.rb'
    autoload :ErrorDetails,                                       '2017-01-19/generated/azure_mgmt_iot_hub/models/error_details.rb'
    autoload :RoutingServiceBusTopicEndpointProperties,           '2017-01-19/generated/azure_mgmt_iot_hub/models/routing_service_bus_topic_endpoint_properties.rb'
    autoload :IotHubQuotaMetricInfo,                              '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info.rb'
    autoload :RoutingEndpoints,                                   '2017-01-19/generated/azure_mgmt_iot_hub/models/routing_endpoints.rb'
    autoload :IotHubQuotaMetricInfoListResult,                    '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info_list_result.rb'
    autoload :FallbackRouteProperties,                            '2017-01-19/generated/azure_mgmt_iot_hub/models/fallback_route_properties.rb'
    autoload :RegistryStatistics,                                 '2017-01-19/generated/azure_mgmt_iot_hub/models/registry_statistics.rb'
    autoload :StorageEndpointProperties,                          '2017-01-19/generated/azure_mgmt_iot_hub/models/storage_endpoint_properties.rb'
    autoload :JobResponse,                                        '2017-01-19/generated/azure_mgmt_iot_hub/models/job_response.rb'
    autoload :FeedbackProperties,                                 '2017-01-19/generated/azure_mgmt_iot_hub/models/feedback_properties.rb'
    autoload :JobResponseListResult,                              '2017-01-19/generated/azure_mgmt_iot_hub/models/job_response_list_result.rb'
    autoload :OperationsMonitoringProperties,                     '2017-01-19/generated/azure_mgmt_iot_hub/models/operations_monitoring_properties.rb'
    autoload :IotHubCapacity,                                     '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_capacity.rb'
    autoload :IotHubSkuInfo,                                      '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_sku_info.rb'
    autoload :IotHubSkuDescription,                               '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description.rb'
    autoload :IpFilterRule,                                       '2017-01-19/generated/azure_mgmt_iot_hub/models/ip_filter_rule.rb'
    autoload :EventHubConsumerGroupsListResult,                   '2017-01-19/generated/azure_mgmt_iot_hub/models/event_hub_consumer_groups_list_result.rb'
    autoload :RoutingEventHubProperties,                          '2017-01-19/generated/azure_mgmt_iot_hub/models/routing_event_hub_properties.rb'
    autoload :EventHubConsumerGroupInfo,                          '2017-01-19/generated/azure_mgmt_iot_hub/models/event_hub_consumer_group_info.rb'
    autoload :RoutingProperties,                                  '2017-01-19/generated/azure_mgmt_iot_hub/models/routing_properties.rb'
    autoload :IotHubSkuDescriptionListResult,                     '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description_list_result.rb'
    autoload :CloudToDeviceProperties,                            '2017-01-19/generated/azure_mgmt_iot_hub/models/cloud_to_device_properties.rb'
    autoload :IotHubDescriptionListResult,                        '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_description_list_result.rb'
    autoload :RoutingServiceBusQueueEndpointProperties,           '2017-01-19/generated/azure_mgmt_iot_hub/models/routing_service_bus_queue_endpoint_properties.rb'
    autoload :OperationInputs,                                    '2017-01-19/generated/azure_mgmt_iot_hub/models/operation_inputs.rb'
    autoload :MessagingEndpointProperties,                        '2017-01-19/generated/azure_mgmt_iot_hub/models/messaging_endpoint_properties.rb'
    autoload :IotHubNameAvailabilityInfo,                         '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_name_availability_info.rb'
    autoload :RouteProperties,                                    '2017-01-19/generated/azure_mgmt_iot_hub/models/route_properties.rb'
    autoload :ExportDevicesRequest,                               '2017-01-19/generated/azure_mgmt_iot_hub/models/export_devices_request.rb'
    autoload :IotHubProperties,                                   '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_properties.rb'
    autoload :ImportDevicesRequest,                               '2017-01-19/generated/azure_mgmt_iot_hub/models/import_devices_request.rb'
    autoload :IotHubDescription,                                  '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_description.rb'
    autoload :AccessRights,                                       '2017-01-19/generated/azure_mgmt_iot_hub/models/access_rights.rb'
    autoload :IpFilterActionType,                                 '2017-01-19/generated/azure_mgmt_iot_hub/models/ip_filter_action_type.rb'
    autoload :RoutingSource,                                      '2017-01-19/generated/azure_mgmt_iot_hub/models/routing_source.rb'
    autoload :OperationMonitoringLevel,                           '2017-01-19/generated/azure_mgmt_iot_hub/models/operation_monitoring_level.rb'
    autoload :Capabilities,                                       '2017-01-19/generated/azure_mgmt_iot_hub/models/capabilities.rb'
    autoload :IotHubSku,                                          '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_sku.rb'
    autoload :IotHubSkuTier,                                      '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_sku_tier.rb'
    autoload :JobType,                                            '2017-01-19/generated/azure_mgmt_iot_hub/models/job_type.rb'
    autoload :JobStatus,                                          '2017-01-19/generated/azure_mgmt_iot_hub/models/job_status.rb'
    autoload :IotHubScaleType,                                    '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_scale_type.rb'
    autoload :IotHubNameUnavailabilityReason,                     '2017-01-19/generated/azure_mgmt_iot_hub/models/iot_hub_name_unavailability_reason.rb'
  end
end
