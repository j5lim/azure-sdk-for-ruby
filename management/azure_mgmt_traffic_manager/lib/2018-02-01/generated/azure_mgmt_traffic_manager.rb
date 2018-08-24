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
require '2018-02-01/generated/azure_mgmt_traffic_manager/module_definition'
require 'ms_rest_azure'

module Azure::TrafficManager::Mgmt::V2018_02_01
  autoload :Endpoints,                                          '2018-02-01/generated/azure_mgmt_traffic_manager/endpoints.rb'
  autoload :Profiles,                                           '2018-02-01/generated/azure_mgmt_traffic_manager/profiles.rb'
  autoload :GeographicHierarchies,                              '2018-02-01/generated/azure_mgmt_traffic_manager/geographic_hierarchies.rb'
  autoload :TrafficManagerManagementClient,                     '2018-02-01/generated/azure_mgmt_traffic_manager/traffic_manager_management_client.rb'

  module Models
    autoload :TrafficManagerNameAvailability,                     '2018-02-01/generated/azure_mgmt_traffic_manager/models/traffic_manager_name_availability.rb'
    autoload :DeleteOperationResult,                              '2018-02-01/generated/azure_mgmt_traffic_manager/models/delete_operation_result.rb'
    autoload :Region,                                             '2018-02-01/generated/azure_mgmt_traffic_manager/models/region.rb'
    autoload :CheckTrafficManagerRelativeDnsNameAvailabilityParameters, '2018-02-01/generated/azure_mgmt_traffic_manager/models/check_traffic_manager_relative_dns_name_availability_parameters.rb'
    autoload :DnsConfig,                                          '2018-02-01/generated/azure_mgmt_traffic_manager/models/dns_config.rb'
    autoload :MonitorConfig,                                      '2018-02-01/generated/azure_mgmt_traffic_manager/models/monitor_config.rb'
    autoload :ProfileListResult,                                  '2018-02-01/generated/azure_mgmt_traffic_manager/models/profile_list_result.rb'
    autoload :Resource,                                           '2018-02-01/generated/azure_mgmt_traffic_manager/models/resource.rb'
    autoload :Endpoint,                                           '2018-02-01/generated/azure_mgmt_traffic_manager/models/endpoint.rb'
    autoload :Profile,                                            '2018-02-01/generated/azure_mgmt_traffic_manager/models/profile.rb'
    autoload :ProxyResource,                                      '2018-02-01/generated/azure_mgmt_traffic_manager/models/proxy_resource.rb'
    autoload :TrafficManagerGeographicHierarchy,                  '2018-02-01/generated/azure_mgmt_traffic_manager/models/traffic_manager_geographic_hierarchy.rb'
    autoload :TrackedResource,                                    '2018-02-01/generated/azure_mgmt_traffic_manager/models/tracked_resource.rb'
    autoload :EndpointStatus,                                     '2018-02-01/generated/azure_mgmt_traffic_manager/models/endpoint_status.rb'
    autoload :EndpointMonitorStatus,                              '2018-02-01/generated/azure_mgmt_traffic_manager/models/endpoint_monitor_status.rb'
    autoload :ProfileMonitorStatus,                               '2018-02-01/generated/azure_mgmt_traffic_manager/models/profile_monitor_status.rb'
    autoload :MonitorProtocol,                                    '2018-02-01/generated/azure_mgmt_traffic_manager/models/monitor_protocol.rb'
    autoload :ProfileStatus,                                      '2018-02-01/generated/azure_mgmt_traffic_manager/models/profile_status.rb'
    autoload :TrafficRoutingMethod,                               '2018-02-01/generated/azure_mgmt_traffic_manager/models/traffic_routing_method.rb'
    autoload :TrafficViewEnrollmentStatus,                        '2018-02-01/generated/azure_mgmt_traffic_manager/models/traffic_view_enrollment_status.rb'
  end
end
