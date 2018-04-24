# Azure ARM

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
  * [Requirements](#requirements)
  * [Getting Azure credentials](#getting-azure-credentials)
  * [Installing the module](#installing-the-azure-module)
3. [Examples](#examples)
4. [Types and providers](#types-and-providers)

## Description

Microsoft Azure exposes a powerful API for creating and managing its Infrastructure as a Service platform. The Azure ARM (Azure Resource Manager) module allows you to drive that API using Puppet code. This allows you to use Puppet to create, stop, restart, and destroy Virtual Machines, and to manage other resources, meaning you can manage even more of your infrastructure as code.

The Puppet Azure ARM module is generated from the [REST API specifications for Microsoft Azure](https://github.com/Azure/azure-rest-api-specs/).  Please see also the [Azure documentation](https://docs.microsoft.com/azure/) (available in many languages).

Classic (ASM) Azure is not supported.

## Setup

### Requirements

#### Getting Azure credentials

To use this module, you need an Azure account. If you already have one, you can skip this section.

1.  Sign up for an [Azure account](https://azure.microsoft.com/free/).

2.  Install [the Azure CLI](https://azure.microsoft.com/documentation/articles/xplat-cli-install/), which is a cross-platform node.js-based tool that works on Windows and Linux. This is required to generate a certificate for the Puppet module, but it's also a useful way of interacting with Azure.

3.  [Register the CLI](https://azure.microsoft.com/documentation/articles/xplat-cli-connect/) with your Azure account.

    a. On the command line, enter:

    ``` shell
    azure account download
    azure account import <path to your .publishsettings file>
    ```

    b. After you've created the account, export the PEM certificate file using the following command:

    ``` shell
    azure account cert export
    ```

4.  Get a subscription ID using the `azure account list` command:

    ``` shell
    $ azure account list
    info:    Executing command account list
    data:    Name                    Id                                     Tenant Id  Current
    data:    ----------------------  -------------------------------------  ---------  -------
    data:    Pay-As-You-Go           xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx  undefined  true
    info:    account list command OK
    ```

To use the Resource Manager API instead, you need a service principal on the Active Directory. A quick way to create one for Puppet is [pendrica/azure-credentials](https://github.com/pendrica/azure-credentials). Its [puppet mode](https://github.com/pendrica/azure-credentials#puppet-style-output-note--v-displays-the-file-on-screen-after-creation) can create the `azure.conf` (see below) for you. Alternatively, the official documentation covers [creating this and retrieving the required credentials](https://azure.microsoft.com/en-us/documentation/articles/resource-group-authenticate-service-principal/).

#### Set environment variables

Set the following environment variables specific to your Azure installation (note the casing here).

```bash
export azure_subscription_id='your-subscription-id'
export azure_tenant_id='your-tenant-id'
export azure_client_id='your-client-id'
export azure_client_secret='your-client-secret'
```

#### Installing the module

Next, Install the module with:

puppet module install puppetlabs-azure_arm

## Examples 

The [examples](./examples/) folder contains [create_vm.pp](./examples/create_vm.pp), which creates 2 virtual machines.

Use the `puppet resource` command on existing resources to determine values to populate in custom manifests, following the create_vm.pp example.  For example:

```bash
puppet resource azure_application_gateway
```

## Types and providers

Here is a list of the types and providers with links to more detailed descriptions for each.


* [azure_trusted_id_provider](azure_trusted_id_provider.md)
* [azure_data_lake_store_account](azure_data_lake_store_account.md)
* [azure_firewall_rule](azure_firewall_rule.md)
* [azure_media_service](azure_media_service.md)
* [azure_route_table](azure_route_table.md)
* [azure_route](azure_route.md)
* [azure_cluster](azure_cluster.md)
* [azure_container_group](azure_container_group.md)
* [azure_resource_link](azure_resource_link.md)
* [azure_identity_provider_contract](azure_identity_provider_contract.md)
* [azure_service_principal](azure_service_principal.md)
* [azure_user](azure_user.md)
* [azure_application](azure_application.md)
* [azure_input](azure_input.md)
* [azure_log_profile_resource](azure_log_profile_resource.md)
* [azure_application_definition](azure_application_definition.md)
* [azure_application](azure_application.md)
* [azure_dsc_node_configuration](azure_dsc_node_configuration.md)
* [azure_webhook](azure_webhook.md)
* [azure_replication](azure_replication.md)
* [azure_registry](azure_registry.md)
* [azure_database_account](azure_database_account.md)
* [azure_local_network_gateway](azure_local_network_gateway.md)
* [azure_virtual_network_gateway](azure_virtual_network_gateway.md)
* [azure_virtual_network_gateway_connection](azure_virtual_network_gateway_connection.md)
* [azure_function](azure_function.md)
* [azure_workspace](azure_workspace.md)
* [azure_action_group_resource](azure_action_group_resource.md)
* [azure_redis_resource](azure_redis_resource.md)
* [azure_redis_patch_schedule](azure_redis_patch_schedule.md)
* [azure_redis_firewall_rule](azure_redis_firewall_rule.md)
* [azure_redis_linked_server_with_properties](azure_redis_linked_server_with_properties.md)
* [azure_authorization_rule](azure_authorization_rule.md)
* [azure_wcf_relay](azure_wcf_relay.md)
* [azure_relay_namespace](azure_relay_namespace.md)
* [azure_hybrid_connection](azure_hybrid_connection.md)
* [azure_managed_cluster](azure_managed_cluster.md)
* [azure_api_management_service_resource](azure_api_management_service_resource.md)
* [azure_load_balancer](azure_load_balancer.md)
* [azure_inbound_nat_rule](azure_inbound_nat_rule.md)
* [azure_analysis_services_server](azure_analysis_services_server.md)
* [azure_api_version_set_contract](azure_api_version_set_contract.md)
* [azure_user_contract](azure_user_contract.md)
* [azure_output](azure_output.md)
* [azure_email_template_contract](azure_email_template_contract.md)
* [azure_event_subscription](azure_event_subscription.md)
* [azure_topic](azure_topic.md)
* [azure_product_contract](azure_product_contract.md)
* [azure_firewall_rule](azure_firewall_rule.md)
* [azure_streaming_job](azure_streaming_job.md)
* [azure_app_service_environment_resource](azure_app_service_environment_resource.md)
* [azure_workspace](azure_workspace.md)
* [azure_backend_contract](azure_backend_contract.md)
* [azure_autoscale_setting_resource](azure_autoscale_setting_resource.md)
* [azure_certificate](azure_certificate.md)
* [azure_application_insights_component_analytics_item](azure_application_insights_component_analytics_item.md)
* [azure_protection_policy_resource](azure_protection_policy_resource.md)
* [azure_server](azure_server.md)
* [azure_domain_service](azure_domain_service.md)
* [azure_workbook](azure_workbook.md)
* [azure_disk](azure_disk.md)
* [azure_snapshot](azure_snapshot.md)
* [azure_connection_monitor_result](azure_connection_monitor_result.md)
* [azure_packet_capture_result](azure_packet_capture_result.md)
* [azure_network_watcher](azure_network_watcher.md)
* [azure_route_filter](azure_route_filter.md)
* [azure_route_filter_rule](azure_route_filter_rule.md)
* [azure_application_security_group](azure_application_security_group.md)
* [azure_database](azure_database.md)
* [azure_server](azure_server.md)
* [azure_firewall_rule](azure_firewall_rule.md)
* [azure_management_lock_object](azure_management_lock_object.md)
* [azure_openid_connect_provider_contract](azure_openid_connect_provider_contract.md)
* [azure_file_server](azure_file_server.md)
* [azure_job](azure_job.md)
* [azure_cluster](azure_cluster.md)
* [azure_web_service](azure_web_service.md)
* [azure_authorization_server_contract](azure_authorization_server_contract.md)
* [azure_diagnostic_contract](azure_diagnostic_contract.md)
* [azure_query_key](azure_query_key.md)
* [azure_search_service](azure_search_service.md)
* [azure_policy_assignment](azure_policy_assignment.md)
* [azure_policy_definition](azure_policy_definition.md)
* [azure_generic_resource](azure_generic_resource.md)
* [azure_tag_details](azure_tag_details.md)
* [azure_resource_group](azure_resource_group.md)
* [azure_deployment_extended](azure_deployment_extended.md)
* [azure_web_test](azure_web_test.md)
* [azure_ddos_protection_plan](azure_ddos_protection_plan.md)
* [azure_customer_subscription](azure_customer_subscription.md)
* [azure_express_route_cross_connection_peering](azure_express_route_cross_connection_peering.md)
* [azure_activity_log_alert_resource](azure_activity_log_alert_resource.md)
* [azure_application_gateway](azure_application_gateway.md)
* [azure_domain_ownership_identifier](azure_domain_ownership_identifier.md)
* [azure_domain](azure_domain.md)
* [azure_server_azure_ad_administrator](azure_server_azure_ad_administrator.md)
* [azure_endpoint](azure_endpoint.md)
* [azure_profile](azure_profile.md)
* [azure_subscription_contract](azure_subscription_contract.md)
* [azure_role_assignment](azure_role_assignment.md)
* [azure_role_definition](azure_role_definition.md)
* [azure_virtual_machine_scale_set_extension](azure_virtual_machine_scale_set_extension.md)
* [azure_availability_set](azure_availability_set.md)
* [azure_virtual_machine](azure_virtual_machine.md)
* [azure_virtual_machine_extension](azure_virtual_machine_extension.md)
* [azure_virtual_machine_scale_set](azure_virtual_machine_scale_set.md)
* [azure_virtual_machine_scale_set_vm](azure_virtual_machine_scale_set_vm.md)
* [azure_image](azure_image.md)
* [azure_security_rule](azure_security_rule.md)
* [azure_network_security_group](azure_network_security_group.md)
* [azure_integration_account](azure_integration_account.md)
* [azure_integration_account_session](azure_integration_account_session.md)
* [azure_workflow](azure_workflow.md)
* [azure_integration_account_certificate](azure_integration_account_certificate.md)
* [azure_integration_account_partner](azure_integration_account_partner.md)
* [azure_integration_account_schema](azure_integration_account_schema.md)
* [azure_integration_account_agreement](azure_integration_account_agreement.md)
* [azure_integration_account_map](azure_integration_account_map.md)
* [azure_manager](azure_manager.md)
* [azure_backup_policy](azure_backup_policy.md)
* [azure_volume](azure_volume.md)
* [azure_storage_account_credential](azure_storage_account_credential.md)
* [azure_access_control_record](azure_access_control_record.md)
* [azure_backup_schedule](azure_backup_schedule.md)
* [azure_manager_extended_info](azure_manager_extended_info.md)
* [azure_bandwidth_setting](azure_bandwidth_setting.md)
* [azure_volume_container](azure_volume_container.md)
* [azure_v_center](azure_v_center.md)
* [azure_replication_protected_item](azure_replication_protected_item.md)
* [azure_network_mapping](azure_network_mapping.md)
* [azure_fabric](azure_fabric.md)
* [azure_recovery_plan](azure_recovery_plan.md)
* [azure_protection_container_mapping](azure_protection_container_mapping.md)
* [azure_storage_classification_mapping](azure_storage_classification_mapping.md)
* [azure_policy](azure_policy.md)
* [azure_host_name_binding](azure_host_name_binding.md)
* [azure_vnet_info](azure_vnet_info.md)
* [azure_hosting_environment](azure_hosting_environment.md)
* [azure_relay_service_connection_entity](azure_relay_service_connection_entity.md)
* [azure_site](azure_site.md)
* [azure_domain](azure_domain.md)
* [azure_csr](azure_csr.md)
* [azure_certificate_order_certificate](azure_certificate_order_certificate.md)
* [azure_server_farm_with_rich_sku](azure_server_farm_with_rich_sku.md)
* [azure_certificate_order](azure_certificate_order.md)
* [azure_deployment](azure_deployment.md)
* [azure_vnet_route](azure_vnet_route.md)
* [azure_certificate](azure_certificate.md)
* [azure_site_source_control](azure_site_source_control.md)
* [azure_policy_contract](azure_policy_contract.md)
* [azure_container_service](azure_container_service.md)
* [azure_certificate_response](azure_certificate_response.md)
* [azure_provisioning_service_description](azure_provisioning_service_description.md)
* [azure_app_service_certificate_resource](azure_app_service_certificate_resource.md)
* [azure_app_service_certificate_order](azure_app_service_certificate_order.md)
* [azure_application_insights_component](azure_application_insights_component.md)
* [azure_record_set](azure_record_set.md)
* [azure_zone](azure_zone.md)
* [azure_saved_search](azure_saved_search.md)
* [azure_storage_insight](azure_storage_insight.md)
* [azure_logger_contract](azure_logger_contract.md)
* [azure_disaster_recovery_configuration](azure_disaster_recovery_configuration.md)
* [azure_tag_contract](azure_tag_contract.md)
* [azure_tag_description_contract](azure_tag_description_contract.md)
* [azure_metric_alert_resource](azure_metric_alert_resource.md)
* [azure_dedicated_capacity](azure_dedicated_capacity.md)
* [azure_premier_add_on](azure_premier_add_on.md)
* [azure_public_certificate](azure_public_certificate.md)
* [azure_site_extension_info](azure_site_extension_info.md)
* [azure_function_envelope](azure_function_envelope.md)
* [azure_site_source_control](azure_site_source_control.md)
* [azure_host_name_binding](azure_host_name_binding.md)
* [azure_relay_service_connection_entity](azure_relay_service_connection_entity.md)
* [azure_deployment](azure_deployment.md)
* [azure_api_release_contract](azure_api_release_contract.md)
* [azure_issue_comment_contract](azure_issue_comment_contract.md)
* [azure_issue_contract](azure_issue_contract.md)
* [azure_schema_contract](azure_schema_contract.md)
* [azure_operation_contract](azure_operation_contract.md)
* [azure_api_contract](azure_api_contract.md)
* [azure_issue_attachment_contract](azure_issue_attachment_contract.md)
* [azure_certificate_contract](azure_certificate_contract.md)
* [azure_policy_assignment](azure_policy_assignment.md)
* [azure_property_contract](azure_property_contract.md)
* [azure_cognitive_services_account](azure_cognitive_services_account.md)
* [azure_container_service](azure_container_service.md)
* [azure_data_lake_analytics_account](azure_data_lake_analytics_account.md)
* [azure_firewall_rule](azure_firewall_rule.md)
* [azure_compute_policy](azure_compute_policy.md)
* [azure_policy_definition](azure_policy_definition.md)
* [azure_elastic_pool](azure_elastic_pool.md)
* [azure_storage_account](azure_storage_account.md)
* [azure_registration](azure_registration.md)
* [azure_rule](azure_rule.md)
* [azure_migration_config_properties](azure_migration_config_properties.md)
* [azure_sb_namespace](azure_sb_namespace.md)
* [azure_sb_authorization_rule](azure_sb_authorization_rule.md)
* [azure_arm_disaster_recovery](azure_arm_disaster_recovery.md)
* [azure_sb_topic](azure_sb_topic.md)
* [azure_sb_queue](azure_sb_queue.md)
* [azure_sb_subscription](azure_sb_subscription.md)
* [azure_event_source_resource](azure_event_source_resource.md)
* [azure_access_policy_resource](azure_access_policy_resource.md)
* [azure_reference_data_set_resource](azure_reference_data_set_resource.md)
* [azure_environment_resource](azure_environment_resource.md)
* [azure_public_ip_address](azure_public_ip_address.md)
* [azure_budget](azure_budget.md)
* [azure_adc_catalog](azure_adc_catalog.md)
* [azure_network_interface](azure_network_interface.md)
* [azure_recipient_user_contract](azure_recipient_user_contract.md)
* [azure_recipient_email_contract](azure_recipient_email_contract.md)
* [azure_iot_hub_description](azure_iot_hub_description.md)
* [azure_certificate_description](azure_certificate_description.md)
* [azure_event_hub_consumer_group_info](azure_event_hub_consumer_group_info.md)
* [azure_shared_access_authorization_rule_resource](azure_shared_access_authorization_rule_resource.md)
* [azure_namespace_resource](azure_namespace_resource.md)
* [azure_notification_hub_resource](azure_notification_hub_resource.md)
* [azure_group_contract](azure_group_contract.md)
* [azure_vault](azure_vault.md)
* [azure_project](azure_project.md)
* [azure_group](azure_group.md)
* [azure_assessment](azure_assessment.md)
* [azure_alert_rule_resource](azure_alert_rule_resource.md)
* [azure_job_response](azure_job_response.md)
* [azure_custom_api_definition](azure_custom_api_definition.md)
* [azure_connection_gateway_definition](azure_connection_gateway_definition.md)
* [azure_api_connection_definition](azure_api_connection_definition.md)
* [azure_application_insights_component_favorite](azure_application_insights_component_favorite.md)
* [azure_vault](azure_vault.md)
* [azure_database](azure_database.md)
* [azure_suppression_contract](azure_suppression_contract.md)
* [azure_server_communication_link](azure_server_communication_link.md)
* [azure_term_list](azure_term_list.md)
* [azure_image_list](azure_image_list.md)
* [azure_arm_disaster_recovery](azure_arm_disaster_recovery.md)
* [azure_authorization_rule](azure_authorization_rule.md)
* [azure_eh_namespace](azure_eh_namespace.md)
* [azure_consumer_group](azure_consumer_group.md)
* [azure_eventhub](azure_eventhub.md)
* [azure_server](azure_server.md)
* [azure_firewall_rule](azure_firewall_rule.md)
* [azure_database](azure_database.md)
* [azure_express_route_circuit](azure_express_route_circuit.md)
* [azure_express_route_circuit_connection](azure_express_route_circuit_connection.md)
* [azure_express_route_circuit_peering](azure_express_route_circuit_peering.md)
* [azure_express_route_circuit_authorization](azure_express_route_circuit_authorization.md)
* [azure_custom_domain](azure_custom_domain.md)
* [azure_profile](azure_profile.md)
* [azure_endpoint](azure_endpoint.md)
* [azure_virtual_network_peering](azure_virtual_network_peering.md)
* [azure_subnet](azure_subnet.md)
* [azure_virtual_network](azure_virtual_network.md)

## Release Notes

This is the initial release of the Puppet Azure ARM module. To create and destroy the resources created in your manifests, set the `ensure` parameter to `present` or `absent`. The `stopped` and `running` states are managed using the Microsoft Azure Portal [Azure Portal](https://portal.azure.com). This functionality is available in the next Puppet Azure ARM release.
