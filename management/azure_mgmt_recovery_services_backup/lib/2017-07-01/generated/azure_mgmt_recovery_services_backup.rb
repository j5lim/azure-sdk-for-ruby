# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
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
require '2017-07-01/generated/azure_mgmt_recovery_services_backup/module_definition'
require 'ms_rest_azure'

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  autoload :ProtectionIntentOperations,                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/protection_intent_operations.rb'
  autoload :BackupStatus,                                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/backup_status.rb'
  autoload :FeatureSupport,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/feature_support.rb'
  autoload :BackupJobs,                                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/backup_jobs.rb'
  autoload :JobDetails,                                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/job_details.rb'
  autoload :ExportJobsOperationResults,                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/export_jobs_operation_results.rb'
  autoload :Jobs,                                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/jobs.rb'
  autoload :BackupPolicies,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/backup_policies.rb'
  autoload :BackupProtectedItems,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/backup_protected_items.rb'
  autoload :BackupUsageSummaries,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/backup_usage_summaries.rb'
  autoload :Operation,                                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/operation.rb'
  autoload :RecoveryServicesBackupClient,                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/recovery_services_backup_client.rb'

  module Models
    autoload :DailyRetentionFormat,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/daily_retention_format.rb'
    autoload :RetentionDuration,                                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/retention_duration.rb'
    autoload :AzureFileshareProtectedItemExtendedInfo,            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_fileshare_protected_item_extended_info.rb'
    autoload :DailyRetentionSchedule,                             '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/daily_retention_schedule.rb'
    autoload :SchedulePolicy,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/schedule_policy.rb'
    autoload :DpmErrorInfo,                                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/dpm_error_info.rb'
    autoload :OperationWorkerResponse,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/operation_worker_response.rb'
    autoload :OperationResultInfoBase,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base.rb'
    autoload :TargetAFSRestoreInfo,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/target_afsrestore_info.rb'
    autoload :MabJobExtendedInfo,                                 '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_job_extended_info.rb'
    autoload :ValidateOperationsResponse,                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/validate_operations_response.rb'
    autoload :AzureWorkloadErrorInfo,                             '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_error_info.rb'
    autoload :AzureIaaSVMErrorInfo,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmerror_info.rb'
    autoload :AzureWorkloadJobTaskDetails,                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_job_task_details.rb'
    autoload :AzureIaaSVMJobTaskDetails,                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_task_details.rb'
    autoload :AzureWorkloadJobExtendedInfo,                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_job_extended_info.rb'
    autoload :ValidateOperationRequest,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/validate_operation_request.rb'
    autoload :MabJobTaskDetails,                                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_job_task_details.rb'
    autoload :RestoreRequest,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/restore_request.rb'
    autoload :MabFileFolderProtectedItemExtendedInfo,             '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item_extended_info.rb'
    autoload :Resource,                                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/resource.rb'
    autoload :MabErrorInfo,                                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_error_info.rb'
    autoload :AzureSqlProtectedItemExtendedInfo,                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item_extended_info.rb'
    autoload :TargetRestoreInfo,                                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/target_restore_info.rb'
    autoload :ProtectionIntent,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_intent.rb'
    autoload :YearlyRetentionSchedule,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/yearly_retention_schedule.rb'
    autoload :AzureStorageJobTaskDetails,                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_storage_job_task_details.rb'
    autoload :MonthlyRetentionSchedule,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/monthly_retention_schedule.rb'
    autoload :ProtectedItemQueryObject,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_query_object.rb'
    autoload :WeeklyRetentionFormat,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/weekly_retention_format.rb'
    autoload :AzureVMResourceFeatureSupportResponse,              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_vmresource_feature_support_response.rb'
    autoload :SQLDataDirectoryMapping,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/sqldata_directory_mapping.rb'
    autoload :AzureVmWorkloadProtectedItemExtendedInfo,           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_protected_item_extended_info.rb'
    autoload :WeeklyRetentionSchedule,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/weekly_retention_schedule.rb'
    autoload :Settings,                                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/settings.rb'
    autoload :NameInfo,                                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/name_info.rb'
    autoload :PreValidateEnableBackupRequest,                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/pre_validate_enable_backup_request.rb'
    autoload :BackupManagementUsage,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/backup_management_usage.rb'
    autoload :BackupManagementUsageList,                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/backup_management_usage_list.rb'
    autoload :AzureIaaSVMHealthDetails,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmhealth_details.rb'
    autoload :BackupStatusRequest,                                '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/backup_status_request.rb'
    autoload :AzureIaaSVMProtectedItemExtendedInfo,               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item_extended_info.rb'
    autoload :BackupStatusResponse,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/backup_status_response.rb'
    autoload :ProtectionPolicyQueryObject,                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy_query_object.rb'
    autoload :BMSBackupSummariesQueryObject,                      '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/bmsbackup_summaries_query_object.rb'
    autoload :AzureStorageErrorInfo,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_storage_error_info.rb'
    autoload :Day,                                                '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/day.rb'
    autoload :ProtectedItem,                                      '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protected_item.rb'
    autoload :ErrorDetail,                                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/error_detail.rb'
    autoload :PreValidateEnableBackupResponse,                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/pre_validate_enable_backup_response.rb'
    autoload :EncryptionDetails,                                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/encryption_details.rb'
    autoload :RestoreFileSpecs,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/restore_file_specs.rb'
    autoload :FeatureSupportRequest,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/feature_support_request.rb'
    autoload :AzureIaaSVMJobExtendedInfo,                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_extended_info.rb'
    autoload :RetentionPolicy,                                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/retention_policy.rb'
    autoload :ProtectionPolicy,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy.rb'
    autoload :JobQueryObject,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/job_query_object.rb'
    autoload :SubProtectionPolicy,                                '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/sub_protection_policy.rb'
    autoload :DpmJobTaskDetails,                                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/dpm_job_task_details.rb'
    autoload :ResourceList,                                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/resource_list.rb'
    autoload :DpmJobExtendedInfo,                                 '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/dpm_job_extended_info.rb'
    autoload :ValidateOperationResponse,                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/validate_operation_response.rb'
    autoload :Job,                                                '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/job.rb'
    autoload :AzureStorageJobExtendedInfo,                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_storage_job_extended_info.rb'
    autoload :DPMProtectedItemExtendedInfo,                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/dpmprotected_item_extended_info.rb'
    autoload :AzureBackupGoalFeatureSupportRequest,               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_backup_goal_feature_support_request.rb'
    autoload :AzureFileshareProtectedItem,                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_fileshare_protected_item.rb'
    autoload :AzureFileShareProtectionPolicy,                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_protection_policy.rb'
    autoload :AzureFileShareRestoreRequest,                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_restore_request.rb'
    autoload :AzureIaaSClassicComputeVMProtectedItem,             '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotected_item.rb'
    autoload :AzureIaaSComputeVMProtectedItem,                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotected_item.rb'
    autoload :AzureIaaSVMJob,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob.rb'
    autoload :AzureIaaSVMProtectedItem,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item.rb'
    autoload :AzureIaaSVMProtectionPolicy,                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotection_policy.rb'
    autoload :AzureRecoveryServiceVaultProtectionIntent,          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_recovery_service_vault_protection_intent.rb'
    autoload :AzureResourceProtectionIntent,                      '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_resource_protection_intent.rb'
    autoload :AzureSqlProtectedItem,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item.rb'
    autoload :AzureSqlProtectionPolicy,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protection_policy.rb'
    autoload :AzureStorageJob,                                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_storage_job.rb'
    autoload :AzureVMResourceFeatureSupportRequest,               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_vmresource_feature_support_request.rb'
    autoload :AzureVmWorkloadProtectedItem,                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_protected_item.rb'
    autoload :AzureVmWorkloadProtectionPolicy,                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_protection_policy.rb'
    autoload :AzureVmWorkloadSAPHanaDatabaseProtectedItem,        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_saphana_database_protected_item.rb'
    autoload :AzureVmWorkloadSQLDatabaseProtectedItem,            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_sqldatabase_protected_item.rb'
    autoload :AzureWorkloadAutoProtectionIntent,                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_auto_protection_intent.rb'
    autoload :AzureWorkloadJob,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_job.rb'
    autoload :AzureWorkloadRestoreRequest,                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_restore_request.rb'
    autoload :AzureWorkloadSAPHanaRestoreRequest,                 '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_saphana_restore_request.rb'
    autoload :AzureWorkloadSAPHanaPointInTimeRestoreRequest,      '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_saphana_point_in_time_restore_request.rb'
    autoload :AzureWorkloadSQLAutoProtectionIntent,               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlauto_protection_intent.rb'
    autoload :AzureWorkloadSQLRestoreRequest,                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlrestore_request.rb'
    autoload :AzureWorkloadSQLPointInTimeRestoreRequest,          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlpoint_in_time_restore_request.rb'
    autoload :DpmJob,                                             '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/dpm_job.rb'
    autoload :DPMProtectedItem,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/dpmprotected_item.rb'
    autoload :ExportJobsOperationResultInfo,                      '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/export_jobs_operation_result_info.rb'
    autoload :GenericProtectedItem,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/generic_protected_item.rb'
    autoload :GenericProtectionPolicy,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/generic_protection_policy.rb'
    autoload :IaasVMRestoreRequest,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmrestore_request.rb'
    autoload :JobResource,                                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/job_resource.rb'
    autoload :JobResourceList,                                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/job_resource_list.rb'
    autoload :LogSchedulePolicy,                                  '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/log_schedule_policy.rb'
    autoload :LongTermRetentionPolicy,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/long_term_retention_policy.rb'
    autoload :LongTermSchedulePolicy,                             '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/long_term_schedule_policy.rb'
    autoload :MabFileFolderProtectedItem,                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item.rb'
    autoload :MabJob,                                             '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_job.rb'
    autoload :MabProtectionPolicy,                                '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_protection_policy.rb'
    autoload :OperationResultInfo,                                '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/operation_result_info.rb'
    autoload :OperationResultInfoBaseResource,                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base_resource.rb'
    autoload :ProtectedItemResource,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_resource.rb'
    autoload :ProtectedItemResourceList,                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_resource_list.rb'
    autoload :ProtectionIntentResource,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_intent_resource.rb'
    autoload :ProtectionPolicyResource,                           '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource.rb'
    autoload :ProtectionPolicyResourceList,                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource_list.rb'
    autoload :SimpleRetentionPolicy,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/simple_retention_policy.rb'
    autoload :SimpleSchedulePolicy,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/simple_schedule_policy.rb'
    autoload :ValidateRestoreOperationRequest,                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/validate_restore_operation_request.rb'
    autoload :ValidateIaasVMRestoreOperationRequest,              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/validate_iaas_vmrestore_operation_request.rb'
    autoload :ProtectionState,                                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_state.rb'
    autoload :HealthStatus,                                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/health_status.rb'
    autoload :RecoveryType,                                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/recovery_type.rb'
    autoload :CopyOptions,                                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/copy_options.rb'
    autoload :RestoreRequestType,                                 '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/restore_request_type.rb'
    autoload :JobSupportedAction,                                 '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/job_supported_action.rb'
    autoload :ProtectedItemState,                                 '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_state.rb'
    autoload :SupportStatus,                                      '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/support_status.rb'
    autoload :LastBackupStatus,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/last_backup_status.rb'
    autoload :ProtectedItemHealthStatus,                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_health_status.rb'
    autoload :OverwriteOptions,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/overwrite_options.rb'
    autoload :WorkloadItemType,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/workload_item_type.rb'
    autoload :SQLDataDirectoryType,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/sqldata_directory_type.rb'
    autoload :UsagesUnit,                                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/usages_unit.rb'
    autoload :DataSourceType,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/data_source_type.rb'
    autoload :ProtectionStatus,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/protection_status.rb'
    autoload :FabricName,                                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/fabric_name.rb'
    autoload :Type,                                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/type.rb'
    autoload :RetentionDurationType,                              '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/retention_duration_type.rb'
    autoload :BackupManagementType,                               '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/backup_management_type.rb'
    autoload :JobStatus,                                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/job_status.rb'
    autoload :JobOperationType,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/job_operation_type.rb'
    autoload :DayOfWeek,                                          '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/day_of_week.rb'
    autoload :RetentionScheduleFormat,                            '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/retention_schedule_format.rb'
    autoload :WeekOfMonth,                                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/week_of_month.rb'
    autoload :MonthOfYear,                                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/month_of_year.rb'
    autoload :MabServerType,                                      '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/mab_server_type.rb'
    autoload :WorkloadType,                                       '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/workload_type.rb'
    autoload :HttpStatusCode,                                     '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/http_status_code.rb'
    autoload :ValidationStatus,                                   '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/validation_status.rb'
    autoload :CreateMode,                                         '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/create_mode.rb'
    autoload :HealthState,                                        '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/health_state.rb'
    autoload :ScheduleRunType,                                    '2017-07-01/generated/azure_mgmt_recovery_services_backup/models/schedule_run_type.rb'
  end
end
