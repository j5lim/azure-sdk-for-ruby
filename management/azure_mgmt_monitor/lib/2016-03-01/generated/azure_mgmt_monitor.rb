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
require '2016-03-01/generated/azure_mgmt_monitor/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Monitor::Api_2016_03_01
  autoload :AlertRuleIncidents,                                 '2016-03-01/generated/azure_mgmt_monitor/alert_rule_incidents.rb'
  autoload :AlertRules,                                         '2016-03-01/generated/azure_mgmt_monitor/alert_rules.rb'
  autoload :LogProfiles,                                        '2016-03-01/generated/azure_mgmt_monitor/log_profiles.rb'
  autoload :MonitorManagementClient,                            '2016-03-01/generated/azure_mgmt_monitor/monitor_management_client.rb'

  module Models
    autoload :AlertRuleResourcePatch,                             '2016-03-01/generated/azure_mgmt_monitor/models/alert_rule_resource_patch.rb'
    autoload :Incident,                                           '2016-03-01/generated/azure_mgmt_monitor/models/incident.rb'
    autoload :AlertRuleResourceCollection,                        '2016-03-01/generated/azure_mgmt_monitor/models/alert_rule_resource_collection.rb'
    autoload :ErrorResponse,                                      '2016-03-01/generated/azure_mgmt_monitor/models/error_response.rb'
    autoload :ManagementEventAggregationCondition,                '2016-03-01/generated/azure_mgmt_monitor/models/management_event_aggregation_condition.rb'
    autoload :RuleCondition,                                      '2016-03-01/generated/azure_mgmt_monitor/models/rule_condition.rb'
    autoload :RuleManagementEventClaimsDataSource,                '2016-03-01/generated/azure_mgmt_monitor/models/rule_management_event_claims_data_source.rb'
    autoload :RuleAction,                                         '2016-03-01/generated/azure_mgmt_monitor/models/rule_action.rb'
    autoload :IncidentListResult,                                 '2016-03-01/generated/azure_mgmt_monitor/models/incident_list_result.rb'
    autoload :LogProfileCollection,                               '2016-03-01/generated/azure_mgmt_monitor/models/log_profile_collection.rb'
    autoload :RuleDataSource,                                     '2016-03-01/generated/azure_mgmt_monitor/models/rule_data_source.rb'
    autoload :Resource,                                           '2016-03-01/generated/azure_mgmt_monitor/models/resource.rb'
    autoload :RetentionPolicy,                                    '2016-03-01/generated/azure_mgmt_monitor/models/retention_policy.rb'
    autoload :LogProfileResourcePatch,                            '2016-03-01/generated/azure_mgmt_monitor/models/log_profile_resource_patch.rb'
    autoload :RuleMetricDataSource,                               '2016-03-01/generated/azure_mgmt_monitor/models/rule_metric_data_source.rb'
    autoload :RuleManagementEventDataSource,                      '2016-03-01/generated/azure_mgmt_monitor/models/rule_management_event_data_source.rb'
    autoload :ThresholdRuleCondition,                             '2016-03-01/generated/azure_mgmt_monitor/models/threshold_rule_condition.rb'
    autoload :LocationThresholdRuleCondition,                     '2016-03-01/generated/azure_mgmt_monitor/models/location_threshold_rule_condition.rb'
    autoload :ManagementEventRuleCondition,                       '2016-03-01/generated/azure_mgmt_monitor/models/management_event_rule_condition.rb'
    autoload :RuleEmailAction,                                    '2016-03-01/generated/azure_mgmt_monitor/models/rule_email_action.rb'
    autoload :RuleWebhookAction,                                  '2016-03-01/generated/azure_mgmt_monitor/models/rule_webhook_action.rb'
    autoload :AlertRuleResource,                                  '2016-03-01/generated/azure_mgmt_monitor/models/alert_rule_resource.rb'
    autoload :LogProfileResource,                                 '2016-03-01/generated/azure_mgmt_monitor/models/log_profile_resource.rb'
    autoload :ConditionOperator,                                  '2016-03-01/generated/azure_mgmt_monitor/models/condition_operator.rb'
    autoload :TimeAggregationOperator,                            '2016-03-01/generated/azure_mgmt_monitor/models/time_aggregation_operator.rb'
  end
end
