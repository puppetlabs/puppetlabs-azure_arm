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


* [azure_api_management_service_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_management_service_resource.md)
* [azure_assessment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_assessment.md)
* [azure_project](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_project.md)
* [azure_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_group.md)
* [azure_input](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_input.md)
* [azure_container_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_container_group.md)
* [azure_group_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_group_contract.md)
* [azure_generic_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_generic_resource.md)
* [azure_deployment_extended](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_deployment_extended.md)
* [azure_resource_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_resource_group.md)
* [azure_tag_details](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_tag_details.md)
* [azure_storage_insight](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_insight.md)
* [azure_saved_search](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_saved_search.md)
* [azure_cognitive_services_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cognitive_services_account.md)
* [azure_inbound_nat_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_inbound_nat_rule.md)
* [azure_load_balancer](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_load_balancer.md)
* [azure_streaming_job](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_streaming_job.md)
* [azure_domain](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain.md)
* [azure_domain_ownership_identifier](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain_ownership_identifier.md)
* [azure_policy_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_contract.md)
* [azure_application_insights_component](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_insights_component.md)
* [azure_premier_add_on](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_premier_add_on.md)
* [azure_site_source_control](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site_source_control.md)
* [azure_relay_service_connection_entity](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relay_service_connection_entity.md)
* [azure_host_name_binding](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_host_name_binding.md)
* [azure_function_envelope](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_function_envelope.md)
* [azure_site_extension_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site_extension_info.md)
* [azure_public_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_public_certificate.md)
* [azure_deployment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_deployment.md)
* [azure_dedicated_capacity](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_dedicated_capacity.md)
* [azure_resource_link](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_resource_link.md)
* [azure_app_service_environment_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_app_service_environment_resource.md)
* [azure_route_filter_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route_filter_rule.md)
* [azure_route_filter](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route_filter.md)
* [azure_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server.md)
* [azure_search_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_search_service.md)
* [azure_query_key](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_query_key.md)
* [azure_container_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_container_service.md)
* [azure_certificate_description](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_description.md)
* [azure_event_hub_consumer_group_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_event_hub_consumer_group_info.md)
* [azure_iot_hub_description](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_iot_hub_description.md)
* [azure_application](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application.md)
* [azure_service_principal](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_service_principal.md)
* [azure_user](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_user.md)
* [azure_subnet](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_subnet.md)
* [azure_virtual_network](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network.md)
* [azure_virtual_network_peering](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_peering.md)
* [azure_policy_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_definition.md)
* [azure_policy_assignment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_assignment.md)
* [azure_disaster_recovery_configuration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_disaster_recovery_configuration.md)
* [azure_workspace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workspace.md)
* [azure_vnet_route](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vnet_route.md)
* [azure_domain](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain.md)
* [azure_hosting_environment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_hosting_environment.md)
* [azure_certificate_order](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_order.md)
* [azure_relay_service_connection_entity](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relay_service_connection_entity.md)
* [azure_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate.md)
* [azure_host_name_binding](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_host_name_binding.md)
* [azure_deployment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_deployment.md)
* [azure_site_source_control](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site_source_control.md)
* [azure_vnet_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vnet_info.md)
* [azure_server_farm_with_rich_sku](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server_farm_with_rich_sku.md)
* [azure_site](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site.md)
* [azure_certificate_order_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_order_certificate.md)
* [azure_csr](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_csr.md)
* [azure_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_endpoint.md)
* [azure_profile](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_profile.md)
* [azure_application_insights_component_analytics_item](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_insights_component_analytics_item.md)
* [azure_web_test](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_web_test.md)
* [azure_domain_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain_service.md)
* [azure_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server.md)
* [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
* [azure_database](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database.md)
* [azure_logger_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_logger_contract.md)
* [azure_protection_policy_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_protection_policy_resource.md)
* [azure_wcf_relay](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_wcf_relay.md)
* [azure_authorization_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_authorization_rule.md)
* [azure_hybrid_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_hybrid_connection.md)
* [azure_relay_namespace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relay_namespace.md)
* [azure_network_watcher](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_watcher.md)
* [azure_packet_capture_result](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_packet_capture_result.md)
* [azure_connection_monitor_result](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_connection_monitor_result.md)
* [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
* [azure_data_lake_analytics_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_data_lake_analytics_account.md)
* [azure_compute_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_compute_policy.md)
* [azure_topic](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_topic.md)
* [azure_event_subscription](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_event_subscription.md)
* [azure_recipient_user_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_recipient_user_contract.md)
* [azure_recipient_email_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_recipient_email_contract.md)
* [azure_dsc_node_configuration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_dsc_node_configuration.md)
* [azure_registry](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_registry.md)
* [azure_replication](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_replication.md)
* [azure_webhook](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_webhook.md)
* [azure_ddos_protection_plan](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_ddos_protection_plan.md)
* [azure_subscription_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_subscription_contract.md)
* [azure_virtual_network_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_gateway.md)
* [azure_local_network_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_local_network_gateway.md)
* [azure_virtual_network_gateway_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_gateway_connection.md)
* [azure_disk](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_disk.md)
* [azure_snapshot](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_snapshot.md)
* [azure_elastic_pool](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_elastic_pool.md)
* [azure_app_service_certificate_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_app_service_certificate_resource.md)
* [azure_app_service_certificate_order](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_app_service_certificate_order.md)
* [azure_identity_provider_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_identity_provider_contract.md)
* [azure_virtual_machine](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine.md)
* [azure_virtual_machine_extension](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_extension.md)
* [azure_availability_set](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_availability_set.md)
* [azure_virtual_machine_scale_set_vm](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_scale_set_vm.md)
* [azure_virtual_machine_scale_set_extension](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_scale_set_extension.md)
* [azure_image](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_image.md)
* [azure_virtual_machine_scale_set](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_scale_set.md)
* [azure_managed_cluster](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_managed_cluster.md)
* [azure_server_azure_ad_administrator](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server_azure_ad_administrator.md)
* [azure_storage_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_account.md)
* [azure_certificate_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_contract.md)
* [azure_media_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_media_service.md)
* [azure_database_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database_account.md)
* [azure_application_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_definition.md)
* [azure_application](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application.md)
* [azure_log_search_rule_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_log_search_rule_resource.md)
* [azure_function](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_function.md)
* [azure_openid_connect_provider_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_openid_connect_provider_contract.md)
* [azure_application_security_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_security_group.md)
* [azure_vault](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vault.md)
* [azure_network_mapping](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_mapping.md)
* [azure_fabric](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_fabric.md)
* [azure_v_center](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_v_center.md)
* [azure_storage_classification_mapping](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_classification_mapping.md)
* [azure_protection_container_mapping](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_protection_container_mapping.md)
* [azure_replication_protected_item](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_replication_protected_item.md)
* [azure_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy.md)
* [azure_recovery_plan](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_recovery_plan.md)
* [azure_role_assignment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_role_assignment.md)
* [azure_role_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_role_definition.md)
* [azure_api_version_set_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_version_set_contract.md)
* [azure_route](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route.md)
* [azure_route_table](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route_table.md)
* [azure_immutability_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_immutability_policy.md)
* [azure_blob_container](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_blob_container.md)
* [azure_integration_account_schema](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_schema.md)
* [azure_integration_account_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_certificate.md)
* [azure_integration_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account.md)
* [azure_integration_account_partner](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_partner.md)
* [azure_integration_account_agreement](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_agreement.md)
* [azure_integration_account_map](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_map.md)
* [azure_integration_account_session](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_session.md)
* [azure_workflow](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workflow.md)
* [azure_autoscale_setting_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_autoscale_setting_resource.md)
* [azure_activity_log_alert_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_activity_log_alert_resource.md)
* [azure_arm_disaster_recovery](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_arm_disaster_recovery.md)
* [azure_eh_namespace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_eh_namespace.md)
* [azure_eventhub](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_eventhub.md)
* [azure_consumer_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_consumer_group.md)
* [azure_authorization_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_authorization_rule.md)
* [azure_product_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_product_contract.md)
* [azure_registration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_registration.md)
* [azure_express_route_cross_connection_peering](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_cross_connection_peering.md)
* [azure_policy_assignment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_assignment.md)
* [azure_diagnostic_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_diagnostic_contract.md)
* [azure_log_profile_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_log_profile_resource.md)
* [azure_issue_attachment_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_issue_attachment_contract.md)
* [azure_api_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_contract.md)
* [azure_operation_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_operation_contract.md)
* [azure_issue_comment_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_issue_comment_contract.md)
* [azure_schema_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_schema_contract.md)
* [azure_issue_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_issue_contract.md)
* [azure_api_release_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_release_contract.md)
* [azure_file_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_file_server.md)
* [azure_cluster](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cluster.md)
* [azure_job](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_job.md)
* [azure_container_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_container_service.md)
* [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
* [azure_job_response](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_job_response.md)
* [azure_property_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_property_contract.md)
* [azure_adc_catalog](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_adc_catalog.md)
* [azure_vault](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vault.md)
* [azure_reference_data_set_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_reference_data_set_resource.md)
* [azure_event_source_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_event_source_resource.md)
* [azure_access_policy_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_access_policy_resource.md)
* [azure_environment_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_environment_resource.md)
* [azure_metric_alert_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_metric_alert_resource.md)
* [azure_database](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database.md)
* [azure_backend_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_backend_contract.md)
* [azure_user_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_user_contract.md)
* [azure_application_insights_component_favorite](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_insights_component_favorite.md)
* [azure_output](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_output.md)
* [azure_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate.md)
* [azure_provisioning_service_description](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_provisioning_service_description.md)
* [azure_certificate_response](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_response.md)
* [azure_management_lock_object](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_management_lock_object.md)
* [azure_customer_subscription](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_customer_subscription.md)
* [azure_image_list](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_image_list.md)
* [azure_term_list](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_term_list.md)
* [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
* [azure_database](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database.md)
* [azure_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server.md)
* [azure_connection_gateway_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_connection_gateway_definition.md)
* [azure_api_connection_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_connection_definition.md)
* [azure_custom_api_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_custom_api_definition.md)
* [azure_email_template_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_email_template_contract.md)
* [azure_security_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_security_rule.md)
* [azure_network_security_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_security_group.md)
* [azure_network_interface](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_interface.md)
* [azure_public_ip_address](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_public_ip_address.md)
* [azure_sb_queue](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_queue.md)
* [azure_sb_namespace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_namespace.md)
* [azure_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_rule.md)
* [azure_arm_disaster_recovery](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_arm_disaster_recovery.md)
* [azure_sb_topic](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_topic.md)
* [azure_sb_subscription](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_subscription.md)
* [azure_sb_authorization_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_authorization_rule.md)
* [azure_migration_config_properties](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_migration_config_properties.md)
* [azure_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_endpoint.md)
* [azure_custom_domain](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_custom_domain.md)
* [azure_profile](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_profile.md)
* [azure_workspace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workspace.md)
* [azure_cluster](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cluster.md)
* [azure_alert_rule_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_alert_rule_resource.md)
* [azure_budget](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_budget.md)
* [azure_authorization_server_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_authorization_server_contract.md)
* [azure_application_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_gateway.md)
* [azure_backup_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_backup_policy.md)
* [azure_volume](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_volume.md)
* [azure_volume_container](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_volume_container.md)
* [azure_storage_account_credential](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_account_credential.md)
* [azure_backup_schedule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_backup_schedule.md)
* [azure_access_control_record](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_access_control_record.md)
* [azure_manager](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_manager.md)
* [azure_manager_extended_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_manager_extended_info.md)
* [azure_bandwidth_setting](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_bandwidth_setting.md)
* [azure_redis_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_firewall_rule.md)
* [azure_redis_patch_schedule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_patch_schedule.md)
* [azure_redis_linked_server_with_properties](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_linked_server_with_properties.md)
* [azure_redis_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_resource.md)
* [azure_policy_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_definition.md)
* [azure_data_lake_store_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_data_lake_store_account.md)
* [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
* [azure_trusted_id_provider](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_trusted_id_provider.md)
* [azure_notification_hub_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_notification_hub_resource.md)
* [azure_shared_access_authorization_rule_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_shared_access_authorization_rule_resource.md)
* [azure_namespace_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_namespace_resource.md)
* [azure_analysis_services_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_analysis_services_server.md)
* [azure_workbook](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workbook.md)
* [azure_action_group_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_action_group_resource.md)
* [azure_express_route_circuit](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit.md)
* [azure_express_route_circuit_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit_connection.md)
* [azure_express_route_circuit_peering](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit_peering.md)
* [azure_express_route_circuit_authorization](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit_authorization.md)
* [azure_suppression_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_suppression_contract.md)
* [azure_zone](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_zone.md)
* [azure_record_set](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_record_set.md)
* [azure_tag_description_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_tag_description_contract.md)
* [azure_tag_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_tag_contract.md)
* [azure_web_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_web_service.md)
* [azure_server_communication_link](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server_communication_link.md)

## Release Notes

This is the initial release of the Puppet Azure ARM module. To create and destroy the resources created in your manifests, set the `ensure` parameter to `present` or `absent`. The `stopped` and `running` states are managed using the Microsoft Azure Portal [Azure Portal](https://portal.azure.com). This functionality is available in the next Puppet Azure ARM release.
