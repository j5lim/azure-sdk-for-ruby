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
require '2016-05-15/generated/azure_mgmt_devtestlabs/module_definition'
require 'ms_rest_azure'

module Azure::ARM::DevTestLabs::Api_2016_05_15
  autoload :Labs,                                               '2016-05-15/generated/azure_mgmt_devtestlabs/labs.rb'
  autoload :GlobalSchedules,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/global_schedules.rb'
  autoload :ArtifactSources,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/artifact_sources.rb'
  autoload :ArmTemplates,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/arm_templates.rb'
  autoload :Artifacts,                                          '2016-05-15/generated/azure_mgmt_devtestlabs/artifacts.rb'
  autoload :Costs,                                              '2016-05-15/generated/azure_mgmt_devtestlabs/costs.rb'
  autoload :CustomImages,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/custom_images.rb'
  autoload :Formulas,                                           '2016-05-15/generated/azure_mgmt_devtestlabs/formulas.rb'
  autoload :GalleryImages,                                      '2016-05-15/generated/azure_mgmt_devtestlabs/gallery_images.rb'
  autoload :NotificationChannels,                               '2016-05-15/generated/azure_mgmt_devtestlabs/notification_channels.rb'
  autoload :PolicySets,                                         '2016-05-15/generated/azure_mgmt_devtestlabs/policy_sets.rb'
  autoload :Policies,                                           '2016-05-15/generated/azure_mgmt_devtestlabs/policies.rb'
  autoload :Schedules,                                          '2016-05-15/generated/azure_mgmt_devtestlabs/schedules.rb'
  autoload :ServiceRunners,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/service_runners.rb'
  autoload :Users,                                              '2016-05-15/generated/azure_mgmt_devtestlabs/users.rb'
  autoload :Disks,                                              '2016-05-15/generated/azure_mgmt_devtestlabs/disks.rb'
  autoload :Environments,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/environments.rb'
  autoload :Secrets,                                            '2016-05-15/generated/azure_mgmt_devtestlabs/secrets.rb'
  autoload :VirtualMachines,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/virtual_machines.rb'
  autoload :VirtualMachineSchedules,                            '2016-05-15/generated/azure_mgmt_devtestlabs/virtual_machine_schedules.rb'
  autoload :VirtualNetworks,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/virtual_networks.rb'
  autoload :DevTestLabsClient,                                  '2016-05-15/generated/azure_mgmt_devtestlabs/dev_test_labs_client.rb'

  module Models
    autoload :FormulaPropertiesFromVm,                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/formula_properties_from_vm.rb'
    autoload :WeekDetails,                                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/week_details.rb'
    autoload :ExportResourceUsageParameters,                      '2016-05-15/generated/azure_mgmt_devtestlabs/models/export_resource_usage_parameters.rb'
    autoload :ExternalSubnet,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/external_subnet.rb'
    autoload :NotificationSettings,                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/notification_settings.rb'
    autoload :ExternalSubnetFragment,                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/external_subnet_fragment.rb'
    autoload :EvaluatePoliciesResponse,                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/evaluate_policies_response.rb'
    autoload :Event,                                              '2016-05-15/generated/azure_mgmt_devtestlabs/models/event.rb'
    autoload :DayDetailsFragment,                                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/day_details_fragment.rb'
    autoload :EventFragment,                                      '2016-05-15/generated/azure_mgmt_devtestlabs/models/event_fragment.rb'
    autoload :NotificationSettingsFragment,                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/notification_settings_fragment.rb'
    autoload :HourDetails,                                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/hour_details.rb'
    autoload :ResponseWithContinuationServiceRunner,              '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_service_runner.rb'
    autoload :ArtifactParameterProperties,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_parameter_properties.rb'
    autoload :ResponseWithContinuationLab,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_lab.rb'
    autoload :ApplyArtifactsRequest,                              '2016-05-15/generated/azure_mgmt_devtestlabs/models/apply_artifacts_request.rb'
    autoload :ResponseWithContinuationLabVhd,                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_lab_vhd.rb'
    autoload :UserSecretStore,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/user_secret_store.rb'
    autoload :GalleryImageReference,                              '2016-05-15/generated/azure_mgmt_devtestlabs/models/gallery_image_reference.rb'
    autoload :ArmTemplateParameterProperties,                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/arm_template_parameter_properties.rb'
    autoload :InboundNatRule,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/inbound_nat_rule.rb'
    autoload :ArtifactDeploymentStatusProperties,                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_deployment_status_properties.rb'
    autoload :SharedPublicIpAddressConfiguration,                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/shared_public_ip_address_configuration.rb'
    autoload :ArtifactParameterPropertiesFragment,                '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_parameter_properties_fragment.rb'
    autoload :NetworkInterfaceProperties,                         '2016-05-15/generated/azure_mgmt_devtestlabs/models/network_interface_properties.rb'
    autoload :ResponseWithContinuationUser,                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_user.rb'
    autoload :LabVirtualMachineCreationParameter,                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_virtual_machine_creation_parameter.rb'
    autoload :AttachDiskProperties,                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/attach_disk_properties.rb'
    autoload :DayDetails,                                         '2016-05-15/generated/azure_mgmt_devtestlabs/models/day_details.rb'
    autoload :BulkCreationParameters,                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/bulk_creation_parameters.rb'
    autoload :UserSecretStoreFragment,                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/user_secret_store_fragment.rb'
    autoload :UserIdentityFragment,                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/user_identity_fragment.rb'
    autoload :ComputeDataDiskFragment,                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/compute_data_disk_fragment.rb'
    autoload :GalleryImageReferenceFragment,                      '2016-05-15/generated/azure_mgmt_devtestlabs/models/gallery_image_reference_fragment.rb'
    autoload :ComputeVmInstanceViewStatusFragment,                '2016-05-15/generated/azure_mgmt_devtestlabs/models/compute_vm_instance_view_status_fragment.rb'
    autoload :ParameterInfo,                                      '2016-05-15/generated/azure_mgmt_devtestlabs/models/parameter_info.rb'
    autoload :ComputeVmPropertiesFragment,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/compute_vm_properties_fragment.rb'
    autoload :GenerateArmTemplateRequest,                         '2016-05-15/generated/azure_mgmt_devtestlabs/models/generate_arm_template_request.rb'
    autoload :CostThresholdProperties,                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/cost_threshold_properties.rb'
    autoload :GenerateUploadUriParameter,                         '2016-05-15/generated/azure_mgmt_devtestlabs/models/generate_upload_uri_parameter.rb'
    autoload :LinuxOsInfo,                                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/linux_os_info.rb'
    autoload :GenerateUploadUriResponse,                          '2016-05-15/generated/azure_mgmt_devtestlabs/models/generate_upload_uri_response.rb'
    autoload :CustomImagePropertiesCustom,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/custom_image_properties_custom.rb'
    autoload :IdentityProperties,                                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/identity_properties.rb'
    autoload :DataDiskProperties,                                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/data_disk_properties.rb'
    autoload :InboundNatRuleFragment,                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/inbound_nat_rule_fragment.rb'
    autoload :DetachDiskProperties,                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/detach_disk_properties.rb'
    autoload :SubnetOverrideFragment,                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/subnet_override_fragment.rb'
    autoload :EnvironmentDeploymentProperties,                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/environment_deployment_properties.rb'
    autoload :TargetCostProperties,                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/target_cost_properties.rb'
    autoload :EvaluatePoliciesProperties,                         '2016-05-15/generated/azure_mgmt_devtestlabs/models/evaluate_policies_properties.rb'
    autoload :LabCostSummaryProperties,                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_cost_summary_properties.rb'
    autoload :PolicyViolation,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/policy_violation.rb'
    autoload :LabCostDetailsProperties,                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_cost_details_properties.rb'
    autoload :WeekDetailsFragment,                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/week_details_fragment.rb'
    autoload :LabResourceCostProperties,                          '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_resource_cost_properties.rb'
    autoload :UserIdentity,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/user_identity.rb'
    autoload :SubnetSharedPublicIpAddressConfigurationFragment,   '2016-05-15/generated/azure_mgmt_devtestlabs/models/subnet_shared_public_ip_address_configuration_fragment.rb'
    autoload :ParametersValueFileInfo,                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/parameters_value_file_info.rb'
    autoload :SubnetFragment,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/subnet_fragment.rb'
    autoload :ResponseWithContinuationSecret,                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_secret.rb'
    autoload :LabVhd,                                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_vhd.rb'
    autoload :ArtifactInstallPropertiesFragment,                  '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_install_properties_fragment.rb'
    autoload :ShutdownNotificationContent,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/shutdown_notification_content.rb'
    autoload :AttachNewDataDiskOptions,                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/attach_new_data_disk_options.rb'
    autoload :SharedPublicIpAddressConfigurationFragment,         '2016-05-15/generated/azure_mgmt_devtestlabs/models/shared_public_ip_address_configuration_fragment.rb'
    autoload :ComputeDataDisk,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/compute_data_disk.rb'
    autoload :NetworkInterfacePropertiesFragment,                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/network_interface_properties_fragment.rb'
    autoload :ComputeVmProperties,                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/compute_vm_properties.rb'
    autoload :RetargetScheduleProperties,                         '2016-05-15/generated/azure_mgmt_devtestlabs/models/retarget_schedule_properties.rb'
    autoload :WindowsOsInfo,                                      '2016-05-15/generated/azure_mgmt_devtestlabs/models/windows_os_info.rb'
    autoload :ResponseWithContinuationVirtualNetwork,             '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_virtual_network.rb'
    autoload :ResponseWithContinuationPolicy,                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_policy.rb'
    autoload :SubnetOverride,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/subnet_override.rb'
    autoload :ResponseWithContinuationNotificationChannel,        '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_notification_channel.rb'
    autoload :NotifyParameters,                                   '2016-05-15/generated/azure_mgmt_devtestlabs/models/notify_parameters.rb'
    autoload :EvaluatePoliciesRequest,                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/evaluate_policies_request.rb'
    autoload :SubnetSharedPublicIpAddressConfiguration,           '2016-05-15/generated/azure_mgmt_devtestlabs/models/subnet_shared_public_ip_address_configuration.rb'
    autoload :HourDetailsFragment,                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/hour_details_fragment.rb'
    autoload :Subnet,                                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/subnet.rb'
    autoload :ArmTemplateInfo,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/arm_template_info.rb'
    autoload :Port,                                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/port.rb'
    autoload :ResponseWithContinuationSchedule,                   '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_schedule.rb'
    autoload :PortFragment,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/port_fragment.rb'
    autoload :ComputeVmInstanceViewStatus,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/compute_vm_instance_view_status.rb'
    autoload :Resource,                                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/resource.rb'
    autoload :CustomImagePropertiesFromVm,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/custom_image_properties_from_vm.rb'
    autoload :ResponseWithContinuationArmTemplate,                '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_arm_template.rb'
    autoload :ResponseWithContinuationLabVirtualMachine,          '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_lab_virtual_machine.rb'
    autoload :ResponseWithContinuationArtifact,                   '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_artifact.rb'
    autoload :ArtifactInstallProperties,                          '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_install_properties.rb'
    autoload :ResponseWithContinuationArtifactSource,             '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_artifact_source.rb'
    autoload :ResponseWithContinuationCustomImage,                '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_custom_image.rb'
    autoload :DetachDataDiskProperties,                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/detach_data_disk_properties.rb'
    autoload :ResponseWithContinuationDisk,                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_disk.rb'
    autoload :ArtifactDeploymentStatusPropertiesFragment,         '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_deployment_status_properties_fragment.rb'
    autoload :ResponseWithContinuationDtlEnvironment,             '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_dtl_environment.rb'
    autoload :PolicySetResult,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/policy_set_result.rb'
    autoload :ResponseWithContinuationFormula,                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_formula.rb'
    autoload :PercentageCostThresholdProperties,                  '2016-05-15/generated/azure_mgmt_devtestlabs/models/percentage_cost_threshold_properties.rb'
    autoload :ResponseWithContinuationGalleryImage,               '2016-05-15/generated/azure_mgmt_devtestlabs/models/response_with_continuation_gallery_image.rb'
    autoload :Schedule,                                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/schedule.rb'
    autoload :ApplicableSchedule,                                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/applicable_schedule.rb'
    autoload :ScheduleFragment,                                   '2016-05-15/generated/azure_mgmt_devtestlabs/models/schedule_fragment.rb'
    autoload :ApplicableScheduleFragment,                         '2016-05-15/generated/azure_mgmt_devtestlabs/models/applicable_schedule_fragment.rb'
    autoload :ArmTemplate,                                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/arm_template.rb'
    autoload :Artifact,                                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact.rb'
    autoload :ArtifactSource,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_source.rb'
    autoload :ArtifactSourceFragment,                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/artifact_source_fragment.rb'
    autoload :CustomImage,                                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/custom_image.rb'
    autoload :Disk,                                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/disk.rb'
    autoload :DtlEnvironment,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/dtl_environment.rb'
    autoload :Formula,                                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/formula.rb'
    autoload :GalleryImage,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/gallery_image.rb'
    autoload :Lab,                                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab.rb'
    autoload :LabCost,                                            '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_cost.rb'
    autoload :LabFragment,                                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_fragment.rb'
    autoload :LabVirtualMachine,                                  '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_virtual_machine.rb'
    autoload :LabVirtualMachineFragment,                          '2016-05-15/generated/azure_mgmt_devtestlabs/models/lab_virtual_machine_fragment.rb'
    autoload :NotificationChannel,                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/notification_channel.rb'
    autoload :NotificationChannelFragment,                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/notification_channel_fragment.rb'
    autoload :Policy,                                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/policy.rb'
    autoload :PolicyFragment,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/policy_fragment.rb'
    autoload :Secret,                                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/secret.rb'
    autoload :ServiceRunner,                                      '2016-05-15/generated/azure_mgmt_devtestlabs/models/service_runner.rb'
    autoload :User,                                               '2016-05-15/generated/azure_mgmt_devtestlabs/models/user.rb'
    autoload :VirtualNetwork,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/virtual_network.rb'
    autoload :UserFragment,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/user_fragment.rb'
    autoload :VirtualNetworkFragment,                             '2016-05-15/generated/azure_mgmt_devtestlabs/models/virtual_network_fragment.rb'
    autoload :EnableStatus,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/enable_status.rb'
    autoload :NotificationStatus,                                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/notification_status.rb'
    autoload :SourceControlType,                                  '2016-05-15/generated/azure_mgmt_devtestlabs/models/source_control_type.rb'
    autoload :StorageType,                                        '2016-05-15/generated/azure_mgmt_devtestlabs/models/storage_type.rb'
    autoload :CostThresholdStatus,                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/cost_threshold_status.rb'
    autoload :WindowsOsState,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/windows_os_state.rb'
    autoload :LinuxOsState,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/linux_os_state.rb'
    autoload :CustomImageOsType,                                  '2016-05-15/generated/azure_mgmt_devtestlabs/models/custom_image_os_type.rb'
    autoload :HostCachingOptions,                                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/host_caching_options.rb'
    autoload :NotificationChannelEventType,                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/notification_channel_event_type.rb'
    autoload :TransportProtocol,                                  '2016-05-15/generated/azure_mgmt_devtestlabs/models/transport_protocol.rb'
    autoload :VirtualMachineCreationSource,                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/virtual_machine_creation_source.rb'
    autoload :FileUploadOptions,                                  '2016-05-15/generated/azure_mgmt_devtestlabs/models/file_upload_options.rb'
    autoload :PremiumDataDisk,                                    '2016-05-15/generated/azure_mgmt_devtestlabs/models/premium_data_disk.rb'
    autoload :TargetCostStatus,                                   '2016-05-15/generated/azure_mgmt_devtestlabs/models/target_cost_status.rb'
    autoload :ReportingCycleType,                                 '2016-05-15/generated/azure_mgmt_devtestlabs/models/reporting_cycle_type.rb'
    autoload :CostType,                                           '2016-05-15/generated/azure_mgmt_devtestlabs/models/cost_type.rb'
    autoload :PolicyStatus,                                       '2016-05-15/generated/azure_mgmt_devtestlabs/models/policy_status.rb'
    autoload :PolicyFactName,                                     '2016-05-15/generated/azure_mgmt_devtestlabs/models/policy_fact_name.rb'
    autoload :PolicyEvaluatorType,                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/policy_evaluator_type.rb'
    autoload :UsagePermissionType,                                '2016-05-15/generated/azure_mgmt_devtestlabs/models/usage_permission_type.rb'
  end
end
