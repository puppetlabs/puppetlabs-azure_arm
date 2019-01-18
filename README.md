# Azure ARM

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
   * [Getting Azure credentials](#getting-azure-credentials)
   * [Set environment variables](#setting-environment-variables)
   * [Installing the module](#installing-the-module)
   * [Validating the module](#validating-the-module)
3. [Usage](#usage)
   * [Examples](#examples)
4. [Reference](#reference)
   * [Types and providers](#types-and-providers)

## Description

Microsoft Azure exposes a powerful API for creating and managing its Infrastructure as a Service platform. Using Puppet code, the azure arm (Azure Resource Manager) module enables you to interact with that API to create and destroy virtual machines, and to manage other resources.

The azure arm module is generated from the Microsoft Azure [REST API specifications](https://github.com/Azure/azure-rest-api-specs/).  For additional information, see the [Azure documentation](https://docs.microsoft.com/azure/).

Classic (ASM) Azure is not supported.

> **Note**: This module and the [puppetlabs-azure](https://forge.puppet.com/puppetlabs/azure) module are mutually exclusive and should not be installed on the same machine. To avoid potential errors during a puppet run, install each module on separate machines.

## Setup

### Getting Azure credentials

To use this module, you need an Azure account. If you already have one, you can skip this section.

1. Sign up for an [Azure account](https://azure.microsoft.com/free/).

2. To generate a certificate for the Puppet module, install the [Azure CLI](https://azure.microsoft.com/documentation/articles/xplat-cli-install/) which is a cross-platform node.js-based tool that works on Windows and Linux.

3. To authenticate with the [Azure CLI](https://azure.microsoft.com/documentation/articles/xplat-cli-connect/), run the following command to receive the authentication code:

   ```shell
   az login
   ```

4. Visit https://microsoft.com/devicelogin and enter the authentication code.

5. To get a subscription ID, run the `az account list` command:

    ``` shell
    $ az account list
[
  {
    "cloudName": "AzureCloud",
    "id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "isDefault": true,
    "name": "xxxx",
    "state": "Enabled",
    "tenantId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "user": {
      "name": "xxxx@xxxx.xxx",
      "type": "user"
    }
  }
]
    ```

To use the Resource Manager API instead, you need a service principal on the Active Directory. For more information, see the [Azure documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-api-authentication).

### Setting environment variables

Set the following environment variables specific to your Azure installation (note the casing here).

```bash
export azure_subscription_id='your-subscription-id'
export azure_tenant_id='your-tenant-id'
export azure_client_id='your-client-id'
export azure_client_secret='your-client-secret'
```

#### Installing the module

To install the azure arm module, run the following command:

```shell
puppet module install puppetlabs-azure_arm
```

#### Validating the module

The azure arm module is compliant with the Puppet Development Kit [(PDK)](https://puppet.com/docs/pdk/1.x/pdk.html), which provides the tool to help validate the modules's metadata, syntax, and style. When you run validations, the PDK output tells you which validations are running and notifies you of any errors, or warnings, it finds for each type of validation; syntax, code style, and metadata.

To run all validations against this module, run the following commands:

```
pdk validate ruby
pdk validate metadata
```

To change validation behavior, add options flags to the command. For a complete list of command options and usage information, see the PDK command [reference](https://puppet.com/docs/pdk/1.x/pdk_reference.html#pdk-validate-command).

## Usage 

To create or remove resources in your manifests, set the `ensure` parameter to `present` or `absent`. The `stopped` and `running` states are managed using the [Microsoft Azure Portal](https://portal.azure.com). This functionality is available in the next Puppet Azure ARM release.

### Examples

The [examples](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/) directory contains the following usage examples: 
* [create_vm.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/create_vm.pp) to create 2 virtual machines. 
* [delete_vm.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/delete_vm.pp) to delete the virtual machines.
* [create_virtual_machine_extension.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/create_virtual_machine_extension.pp) to create a virtual machine extension.
* [create_aks.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/create_aks.pp) for creating the Azure Kubernetes Service (AKS).
* [delete_aks.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/delete_aks.pp) for deleting the Azure Kubernetes Service (AKS).
* [create_resource_level_deployment.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/create_resource_level_deployment.pp) to deploy resources to a resource group in your Azure subscription.
* [delete_resource_level_deployment.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/delete_resource_level_deployment.pp) to delete a resource level deployment in your Azure subscription.
* [task_example.sh](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/task_example.sh) contains a number of sample tasks, each using [Puppet Bolt](https://puppet.com/docs/bolt/0.x/bolt.html):
  * list the available Azure operations.
  * list virtual machines by location.
  * create Azure storage accounts.
  * create or delete resource level deployments.

Following the [create_vm.pp](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/examples/create_vm.pp) example, use the `puppet resource` command on existing resources to determine which values to populate in custom manifests.  

For example:

```shell
puppet resource azure_application_gateway
```

## Reference

### Types and providers

Here is a list of the types and providers with links to detailed descriptions for each one:
 
[account.json](/tmp/azure-rest-api-specs/specification/datalake-analytics/resource-manager/Microsoft.DataLakeAnalytics/stable/2016-11-01/account.json)
 * [azure_compute_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_compute_policy.md)
 * [azure_data_lake_analytics_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_data_lake_analytics_account.md)
 * [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
 
[account.json(1)](/tmp/azure-rest-api-specs/specification/datalake-store/resource-manager/Microsoft.DataLakeStore/stable/2016-11-01/account.json)
 * [azure_data_lake_store_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_data_lake_store_account.md)
 * [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
 * [azure_trusted_id_provider](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_trusted_id_provider.md)
 * [azure_virtual_network_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_rule.md)
 
[accountfilters.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/AccountFilters.json)
 * [azure_account_filter](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_account_filter.md)
 
[accounts.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/Accounts.json)
 * [azure_media_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_media_service.md)
 
[actiongroups_api.json](/tmp/azure-rest-api-specs/specification/monitor/resource-manager/Microsoft.Insights/stable/2018-09-01/actionGroups_API.json)
 * [azure_action_group_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_action_group_resource.md)
 
[activitylogalerts_api.json](/tmp/azure-rest-api-specs/specification/monitor/resource-manager/Microsoft.Insights/stable/2017-04-01/activityLogAlerts_API.json)
 * [azure_activity_log_alert_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_activity_log_alert_resource.md)
 
[advisor.json](/tmp/azure-rest-api-specs/specification/advisor/resource-manager/Microsoft.Advisor/stable/2017-04-19/advisor.json)
 * [azure_suppression_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_suppression_contract.md)
 
[alertrules_api.json](/tmp/azure-rest-api-specs/specification/monitor/resource-manager/Microsoft.Insights/stable/2016-03-01/alertRules_API.json)
 * [azure_alert_rule_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_alert_rule_resource.md)
 
[analysisservices.json](/tmp/azure-rest-api-specs/specification/analysisservices/resource-manager/Microsoft.AnalysisServices/stable/2017-08-01/analysisservices.json)
 * [azure_analysis_services_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_analysis_services_server.md)
 
[analyticsitems_api.json](/tmp/azure-rest-api-specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/analyticsItems_API.json)
 * [azure_application_insights_component_analytics_item](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_insights_component_analytics_item.md)
 
[apimanagement.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimanagement.json)
 * [azure_policy_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_contract.md)
 
[apimapis.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimapis.json)
 * [azure_api_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_contract.md)
 * [azure_api_release_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_release_contract.md)
 * [azure_issue_attachment_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_issue_attachment_contract.md)
 * [azure_issue_comment_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_issue_comment_contract.md)
 * [azure_issue_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_issue_contract.md)
 * [azure_operation_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_operation_contract.md)
 * [azure_schema_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_schema_contract.md)
 
[apimauthorizationservers.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimauthorizationservers.json)
 * [azure_authorization_server_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_authorization_server_contract.md)
 
[apimbackends.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimbackends.json)
 * [azure_backend_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_backend_contract.md)
 
[apimcertificates.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimcertificates.json)
 * [azure_certificate_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_contract.md)
 
[apimdeployment.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimdeployment.json)
 * [azure_api_management_service_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_management_service_resource.md)
 
[apimdiagnostics.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimdiagnostics.json)
 * [azure_diagnostic_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_diagnostic_contract.md)
 
[apimemailtemplate.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimemailtemplate.json)
 * [azure_email_template_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_email_template_contract.md)
 
[apimgroups.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimgroups.json)
 * [azure_group_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_group_contract.md)
 
[apimidentityprovider.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimidentityprovider.json)
 * [azure_identity_provider_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_identity_provider_contract.md)
 
[apimloggers.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimloggers.json)
 * [azure_logger_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_logger_contract.md)
 
[apimnotifications.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimnotifications.json)
 * [azure_recipient_email_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_recipient_email_contract.md)
 * [azure_recipient_user_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_recipient_user_contract.md)
 
[apimopenidconnectproviders.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimopenidconnectproviders.json)
 * [azure_openid_connect_provider_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_openid_connect_provider_contract.md)
 
[apimproducts.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimproducts.json)
 * [azure_product_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_product_contract.md)
 
[apimproperties.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimproperties.json)
 * [azure_property_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_property_contract.md)
 
[apimsubscriptions.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimsubscriptions.json)
 * [azure_subscription_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_subscription_contract.md)
 
[apimtags.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimtags.json)
 * [azure_tag_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_tag_contract.md)
 * [azure_tag_description_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_tag_description_contract.md)
 
[apimusers.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimusers.json)
 * [azure_user_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_user_contract.md)
 
[apimversionsets.json](/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimversionsets.json)
 * [azure_api_version_set_contract](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_version_set_contract.md)
 
[applicationgateway.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/applicationGateway.json)
 * [azure_application_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_gateway.md)
 
[applicationsecuritygroup.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/applicationSecurityGroup.json)
 * [azure_application_security_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_security_group.md)
 
[appservicecertificateorders.json](/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.CertificateRegistration/stable/2018-02-01/AppServiceCertificateOrders.json)
 * [azure_app_service_certificate_order](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_app_service_certificate_order.md)
 * [azure_app_service_certificate_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_app_service_certificate_resource.md)
 
[appserviceenvironments.json](/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/AppServiceEnvironments.json)
 * [azure_app_service_environment_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_app_service_environment_resource.md)
 
[assetsandassetfilters.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/AssetsAndAssetFilters.json)
 * [azure_asset](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_asset.md)
 * [azure_asset_filter](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_asset_filter.md)
 
[authorization.json](/tmp/azure-rest-api-specs/specification/authorization/resource-manager/Microsoft.Authorization/stable/2015-07-01/authorization.json)
 * [azure_role_assignment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_role_assignment.md)
 * [azure_role_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_role_definition.md)
 
[autoscale_api.json](/tmp/azure-rest-api-specs/specification/monitor/resource-manager/Microsoft.Insights/stable/2015-04-01/autoscale_API.json)
 * [azure_autoscale_setting_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_autoscale_setting_resource.md)
 
[azurefirewall.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/azureFirewall.json)
 * [azure_azure_firewall](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_azure_firewall.md)
 
[batchai.json](/tmp/azure-rest-api-specs/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-05-01/BatchAI.json)
 * [azure_cluster](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cluster.md)
 * [azure_experiment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_experiment.md)
 * [azure_file_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_file_server.md)
 * [azure_job](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_job.md)
 * [azure_workspace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workspace.md)
 
[blob.json](/tmp/azure-rest-api-specs/specification/storage/resource-manager/Microsoft.Storage/stable/2018-07-01/blob.json)
 * [azure_blob_container](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_blob_container.md)
 * [azure_immutability_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_immutability_policy.md)
 
[bms.json](/tmp/azure-rest-api-specs/specification/recoveryservicesbackup/resource-manager/Microsoft.RecoveryServices/stable/2017-07-01/bms.json)
 * [azure_protection_intent_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_protection_intent_resource.md)
 
[cdn.json](/tmp/azure-rest-api-specs/specification/cdn/resource-manager/Microsoft.Cdn/stable/2017-10-12/cdn.json)
 * [azure_custom_domain](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_custom_domain.md)
 * [azure_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_endpoint.md)
 * [azure_profile](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_profile.md)
 
[certificates.json](/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/Certificates.json)
 * [azure_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate.md)
 
[cluster.json](/tmp/azure-rest-api-specs/specification/servicefabric/resource-manager/Microsoft.ServiceFabric/stable/2018-02-01/cluster.json)
 * [azure_cluster](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cluster.md)
 
[cognitiveservices.json](/tmp/azure-rest-api-specs/specification/cognitiveservices/resource-manager/Microsoft.CognitiveServices/stable/2017-04-18/cognitiveservices.json)
 * [azure_cognitive_services_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cognitive_services_account.md)
 
[components_api.json](/tmp/azure-rest-api-specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/components_API.json)
 * [azure_application_insights_component](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_insights_component.md)
 
[compute.json](/tmp/azure-rest-api-specs/specification/compute/resource-manager/Microsoft.Compute/stable/2018-10-01/compute.json)
 * [azure_availability_set](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_availability_set.md)
 * [azure_image](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_image.md)
 * [azure_virtual_machine](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine.md)
 * [azure_virtual_machine_extension](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_extension.md)
 * [azure_virtual_machine_scale_set](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_scale_set.md)
 * [azure_virtual_machine_scale_set_extension](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_scale_set_extension.md)
 * [azure_virtual_machine_scale_set_vm](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_machine_scale_set_vm.md)
 
[consumption.json](/tmp/azure-rest-api-specs/specification/consumption/resource-manager/Microsoft.Consumption/stable/2018-10-01/consumption.json)
 * [azure_budget](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_budget.md)
 
[containerinstance.json](/tmp/azure-rest-api-specs/specification/containerinstance/resource-manager/Microsoft.ContainerInstance/stable/2018-10-01/containerInstance.json)
 * [azure_container_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_container_group.md)
 
[containerregistry.json](/tmp/azure-rest-api-specs/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2017-10-01/containerregistry.json)
 * [azure_registry](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_registry.md)
 * [azure_replication](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_replication.md)
 * [azure_webhook](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_webhook.md)
 
[containerregistry_build.json](/tmp/azure-rest-api-specs/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2018-09-01/containerregistry_build.json)
 * [azure_task](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_task.md)
 
[containerservice.json](/tmp/azure-rest-api-specs/specification/compute/resource-manager/Microsoft.ContainerService/stable/2017-01-31/containerService.json)
 * [azure_container_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_container_service.md)
 
[containerservice.json(1)](/tmp/azure-rest-api-specs/specification/containerservices/resource-manager/Microsoft.ContainerService/stable/2017-07-01/containerService.json)
 * [azure_container_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_container_service.md)
 
[contentkeypolicies.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/ContentKeyPolicies.json)
 * [azure_content_key_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_content_key_policy.md)
 
[contentmoderator.json](/tmp/azure-rest-api-specs/specification/cognitiveservices/data-plane/ContentModerator/stable/v1.0/ContentModerator.json)
 * [azure_image_list](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_image_list.md)
 * [azure_term_list](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_term_list.md)
 
[cosmos-db.json](/tmp/azure-rest-api-specs/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json)
 * [azure_database_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database_account.md)
 
[customer-insights.json](/tmp/azure-rest-api-specs/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json)
 * [azure_connector_mapping_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_connector_mapping_resource_format.md)
 * [azure_connector_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_connector_resource_format.md)
 * [azure_hub](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_hub.md)
 * [azure_kpi_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_kpi_resource_format.md)
 * [azure_link_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_link_resource_format.md)
 * [azure_prediction_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_prediction_resource_format.md)
 * [azure_profile_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_profile_resource_format.md)
 * [azure_relationship_link_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relationship_link_resource_format.md)
 * [azure_relationship_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relationship_resource_format.md)
 * [azure_role_assignment_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_role_assignment_resource_format.md)
 * [azure_view_resource_format](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_view_resource_format.md)
 
[customersubscription.json](/tmp/azure-rest-api-specs/specification/azurestack/resource-manager/Microsoft.AzureStack/stable/2017-06-01/CustomerSubscription.json)
 * [azure_customer_subscription](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_customer_subscription.md)
 
[databases.json](/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/databases.json)
 * [azure_database](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database.md)
 
[databox.json](/tmp/azure-rest-api-specs/specification/databox/resource-manager/Microsoft.DataBox/stable/2018-01-01/databox.json)
 * [azure_job_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_job_resource.md)
 
[databricks.json](/tmp/azure-rest-api-specs/specification/databricks/resource-manager/Microsoft.Databricks/stable/2018-04-01/databricks.json)
 * [azure_workspace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workspace.md)
 
[datacatalog.json](/tmp/azure-rest-api-specs/specification/datacatalog/resource-manager/Microsoft.DataCatalog/stable/2016-03-30/datacatalog.json)
 * [azure_adc_catalog](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_adc_catalog.md)
 
[datafactory.json](/tmp/azure-rest-api-specs/specification/datafactory/resource-manager/Microsoft.DataFactory/stable/2018-06-01/datafactory.json)
 * [azure_dataset_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_dataset_resource.md)
 * [azure_factory](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_factory.md)
 * [azure_integration_runtime_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_runtime_resource.md)
 * [azure_linked_service_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_linked_service_resource.md)
 * [azure_pipeline_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_pipeline_resource.md)
 * [azure_trigger_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_trigger_resource.md)
 
[ddoscustompolicy.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/ddosCustomPolicy.json)
 * [azure_ddos_custom_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_ddos_custom_policy.md)
 
[ddosprotectionplan.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/ddosProtectionPlan.json)
 * [azure_ddos_protection_plan](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_ddos_protection_plan.md)
 
[disasterrecoveryconfigurations.json](/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/disasterRecoveryConfigurations.json)
 * [azure_disaster_recovery_configuration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_disaster_recovery_configuration.md)
 
[disk.json](/tmp/azure-rest-api-specs/specification/compute/resource-manager/Microsoft.Compute/stable/2018-06-01/disk.json)
 * [azure_disk](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_disk.md)
 * [azure_snapshot](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_snapshot.md)
 
[dns.json](/tmp/azure-rest-api-specs/specification/dns/resource-manager/Microsoft.Network/stable/2018-05-01/dns.json)
 * [azure_record_set](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_record_set.md)
 * [azure_zone](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_zone.md)
 
[domains.json](/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.DomainRegistration/stable/2018-02-01/Domains.json)
 * [azure_domain](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain.md)
 * [azure_domain_ownership_identifier](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain_ownership_identifier.md)
 
[domainservices.json](/tmp/azure-rest-api-specs/specification/domainservices/resource-manager/Microsoft.AAD/stable/2017-06-01/domainservices.json)
 * [azure_domain_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain_service.md)
 
[edgegateway.json](/tmp/azure-rest-api-specs/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2018-07-01/edgegateway.json)
 * [azure_bandwidth_schedule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_bandwidth_schedule.md)
 * [azure_data_box_edge_device](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_data_box_edge_device.md)
 * [azure_order](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_order.md)
 * [azure_role](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_role.md)
 * [azure_share](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_share.md)
 * [azure_storage_account_credential](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_account_credential.md)
 * [azure_trigger](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_trigger.md)
 * [azure_user](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_user.md)
 
[elasticpools.json](/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/elasticPools.json)
 * [azure_elastic_pool](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_elastic_pool.md)
 
[encoding.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/Encoding.json)
 * [azure_job](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_job.md)
 * [azure_transform](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_transform.md)
 
[eventgrid.json](/tmp/azure-rest-api-specs/specification/eventgrid/resource-manager/Microsoft.EventGrid/stable/2019-01-01/EventGrid.json)
 * [azure_event_subscription](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_event_subscription.md)
 * [azure_topic](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_topic.md)
 
[eventhub.json](/tmp/azure-rest-api-specs/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json)
 * [azure_arm_disaster_recovery](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_arm_disaster_recovery.md)
 * [azure_authorization_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_authorization_rule.md)
 * [azure_consumer_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_consumer_group.md)
 * [azure_eh_namespace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_eh_namespace.md)
 * [azure_eventhub](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_eventhub.md)
 
[expressroutecircuit.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/expressRouteCircuit.json)
 * [azure_express_route_circuit](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit.md)
 * [azure_express_route_circuit_authorization](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit_authorization.md)
 * [azure_express_route_circuit_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit_connection.md)
 * [azure_express_route_circuit_peering](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_circuit_peering.md)
 
[expressroutecrossconnection.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/expressRouteCrossConnection.json)
 * [azure_express_route_cross_connection_peering](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_cross_connection_peering.md)
 
[expressroutegateway.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/expressRouteGateway.json)
 * [azure_express_route_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_connection.md)
 * [azure_express_route_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_gateway.md)
 
[expressrouteport.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/expressRoutePort.json)
 * [azure_express_route_port](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_express_route_port.md)
 
[favorites_api.json](/tmp/azure-rest-api-specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/favorites_API.json)
 * [azure_application_insights_component_favorite](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_insights_component_favorite.md)
 
[firewallrules.json](/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/firewallRules.json)
 * [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
 
[functions.json](/tmp/azure-rest-api-specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/functions.json)
 * [azure_function](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_function.md)
 
[gallery.json](/tmp/azure-rest-api-specs/specification/compute/resource-manager/Microsoft.Compute/stable/2018-06-01/gallery.json)
 * [azure_gallery](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_gallery.md)
 * [azure_gallery_image](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_gallery_image.md)
 * [azure_gallery_image_version](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_gallery_image_version.md)
 
[graphrbac.json](/tmp/azure-rest-api-specs/specification/graphrbac/data-plane/Microsoft.GraphRbac/stable/1.6/graphrbac.json)
 * [azure_application](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application.md)
 * [azure_service_principal](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_service_principal.md)
 * [azure_user](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_user.md)
 
[guestconfiguration.json](/tmp/azure-rest-api-specs/specification/guestconfiguration/resource-manager/Microsoft.GuestConfiguration/stable/2018-11-20/guestconfiguration.json)
 * [azure_guest_configuration_assignment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_guest_configuration_assignment.md)
 
[inputs.json](/tmp/azure-rest-api-specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/inputs.json)
 * [azure_input](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_input.md)
 
[interfaceendpoint.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/interfaceEndpoint.json)
 * [azure_interface_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_interface_endpoint.md)
 
[iotcentral.json](/tmp/azure-rest-api-specs/specification/iotcentral/resource-manager/Microsoft.IoTCentral/stable/2018-09-01/iotcentral.json)
 * [azure_app](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_app.md)
 
[iotdps.json](/tmp/azure-rest-api-specs/specification/deviceprovisioningservices/resource-manager/Microsoft.Devices/stable/2018-01-22/iotdps.json)
 * [azure_certificate_response](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_response.md)
 * [azure_provisioning_service_description](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_provisioning_service_description.md)
 
[iothub.json](/tmp/azure-rest-api-specs/specification/iothub/resource-manager/Microsoft.Devices/stable/2018-04-01/iothub.json)
 * [azure_certificate_description](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_description.md)
 * [azure_event_hub_consumer_group_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_event_hub_consumer_group_info.md)
 * [azure_iot_hub_description](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_iot_hub_description.md)
 
[keyvault.json](/tmp/azure-rest-api-specs/specification/keyvault/resource-manager/Microsoft.KeyVault/stable/2018-02-14/keyvault.json)
 * [azure_vault](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vault.md)
 
[links.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Resources/stable/2016-09-01/links.json)
 * [azure_resource_link](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_resource_link.md)
 
[loadbalancer.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/loadBalancer.json)
 * [azure_inbound_nat_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_inbound_nat_rule.md)
 * [azure_load_balancer](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_load_balancer.md)
 
[locks.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Authorization/stable/2016-09-01/locks.json)
 * [azure_management_lock_object](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_management_lock_object.md)
 
[logic.json](/tmp/azure-rest-api-specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json)
 * [azure_assembly_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_assembly_definition.md)
 * [azure_batch_configuration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_batch_configuration.md)
 * [azure_integration_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account.md)
 * [azure_integration_account_agreement](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_agreement.md)
 * [azure_integration_account_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_certificate.md)
 * [azure_integration_account_map](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_map.md)
 * [azure_integration_account_partner](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_partner.md)
 * [azure_integration_account_schema](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_schema.md)
 * [azure_integration_account_session](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_integration_account_session.md)
 * [azure_workflow](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workflow.md)
 
[logicappsmanagementclient.json](/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2016-06-01/logicAppsManagementClient.json)
 * [azure_api_connection_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_api_connection_definition.md)
 * [azure_connection_gateway_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_connection_gateway_definition.md)
 * [azure_custom_api_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_custom_api_definition.md)
 
[logprofiles_api.json](/tmp/azure-rest-api-specs/specification/monitor/resource-manager/Microsoft.Insights/stable/2016-03-01/logProfiles_API.json)
 * [azure_log_profile_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_log_profile_resource.md)
 
[machinelearningservices.json](/tmp/azure-rest-api-specs/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/stable/2018-11-19/machineLearningServices.json)
 * [azure_compute_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_compute_resource.md)
 * [azure_workspace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workspace.md)
 
[managedapplications.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Solutions/stable/2018-06-01/managedapplications.json)
 * [azure_application](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application.md)
 * [azure_application_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_application_definition.md)
 
[managedclusters.json](/tmp/azure-rest-api-specs/specification/containerservices/resource-manager/Microsoft.ContainerService/stable/2018-03-31/managedClusters.json)
 * [azure_managed_cluster](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_managed_cluster.md)
 
[managedidentity.json](/tmp/azure-rest-api-specs/specification/msi/resource-manager/Microsoft.ManagedIdentity/stable/2018-11-30/ManagedIdentity.json)
 * [azure_identity](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_identity.md)
 
[maps-management.json](/tmp/azure-rest-api-specs/specification/maps/resource-manager/Microsoft.Maps/stable/2018-05-01/maps-management.json)
 * [azure_maps_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_maps_account.md)
 
[media.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2015-10-01/media.json)
 * [azure_media_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_media_service.md)
 
[metricalert_api.json](/tmp/azure-rest-api-specs/specification/monitor/resource-manager/Microsoft.Insights/stable/2018-03-01/metricAlert_API.json)
 * [azure_metric_alert_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_metric_alert_resource.md)
 
[migrate.json](/tmp/azure-rest-api-specs/specification/migrate/resource-manager/Microsoft.Migrate/stable/2018-02-02/migrate.json)
 * [azure_assessment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_assessment.md)
 * [azure_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_group.md)
 * [azure_project](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_project.md)
 
[ml.json](/tmp/azure-rest-api-specs/specification/labservices/resource-manager/Microsoft.LabServices/stable/2018-10-15/ML.json)
 * [azure_environment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_environment.md)
 * [azure_environment_setting](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_environment_setting.md)
 * [azure_gallery_image](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_gallery_image.md)
 * [azure_lab](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_lab.md)
 * [azure_lab_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_lab_account.md)
 * [azure_user](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_user.md)
 
[mysql.json](/tmp/azure-rest-api-specs/specification/mysql/resource-manager/Microsoft.DBforMySQL/stable/2017-12-01/mysql.json)
 * [azure_database](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database.md)
 * [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
 * [azure_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server.md)
 * [azure_virtual_network_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_rule.md)
 
[networkinterface.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/networkInterface.json)
 * [azure_network_interface](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_interface.md)
 * [azure_network_interface_tap_configuration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_interface_tap_configuration.md)
 
[networkprofile.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/networkProfile.json)
 * [azure_network_profile](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_profile.md)
 
[networksecuritygroup.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/networkSecurityGroup.json)
 * [azure_network_security_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_security_group.md)
 * [azure_security_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_security_rule.md)
 
[networkwatcher.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/networkWatcher.json)
 * [azure_connection_monitor_result](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_connection_monitor_result.md)
 * [azure_network_watcher](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_watcher.md)
 * [azure_packet_capture_result](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_packet_capture_result.md)
 
[notificationhubs.json](/tmp/azure-rest-api-specs/specification/notificationhubs/resource-manager/Microsoft.NotificationHubs/stable/2017-04-01/notificationhubs.json)
 * [azure_namespace_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_namespace_resource.md)
 * [azure_notification_hub_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_notification_hub_resource.md)
 * [azure_shared_access_authorization_rule_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_shared_access_authorization_rule_resource.md)
 
[operationalinsights.json](/tmp/azure-rest-api-specs/specification/operationalinsights/resource-manager/Microsoft.OperationalInsights/stable/2015-03-20/OperationalInsights.json)
 * [azure_saved_search](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_saved_search.md)
 * [azure_storage_insight](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_insight.md)
 
[outputs.json](/tmp/azure-rest-api-specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/outputs.json)
 * [azure_output](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_output.md)
 
[policy.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Authorization/stable/2016-04-01/policy.json)
 * [azure_policy_assignment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_assignment.md)
 * [azure_policy_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_definition.md)
 
[policyassignments.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Authorization/stable/2018-05-01/policyAssignments.json)
 * [azure_policy_assignment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_assignment.md)
 
[policydefinitions.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Authorization/stable/2018-05-01/policyDefinitions.json)
 * [azure_policy_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_definition.md)
 
[policysetdefinitions.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Authorization/stable/2018-05-01/policySetDefinitions.json)
 * [azure_policy_set_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy_set_definition.md)
 
[postgresql.json](/tmp/azure-rest-api-specs/specification/postgresql/resource-manager/Microsoft.DBforPostgreSQL/stable/2017-12-01/postgresql.json)
 * [azure_database](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_database.md)
 * [azure_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_firewall_rule.md)
 * [azure_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server.md)
 * [azure_virtual_network_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_rule.md)
 
[powerbidedicated.json](/tmp/azure-rest-api-specs/specification/powerbidedicated/resource-manager/Microsoft.PowerBIdedicated/stable/2017-10-01/powerbidedicated.json)
 * [azure_dedicated_capacity](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_dedicated_capacity.md)
 
[publicipaddress.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/publicIpAddress.json)
 * [azure_public_ip_address](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_public_ip_address.md)
 
[publicipprefix.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/publicIpPrefix.json)
 * [azure_public_ip_prefix](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_public_ip_prefix.md)
 
[recoveryservicesbackup.json](/tmp/azure-rest-api-specs/specification/recoveryservicesbackup/resource-manager/Microsoft.RecoveryServices/stable/2016-06-01/recoveryservicesbackup.json)
 * [azure_protection_policy_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_protection_policy_resource.md)
 
[redis.json](/tmp/azure-rest-api-specs/specification/redis/resource-manager/Microsoft.Cache/stable/2018-03-01/redis.json)
 * [azure_redis_firewall_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_firewall_rule.md)
 * [azure_redis_linked_server_with_properties](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_linked_server_with_properties.md)
 * [azure_redis_patch_schedule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_patch_schedule.md)
 * [azure_redis_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_redis_resource.md)
 
[registration.json](/tmp/azure-rest-api-specs/specification/azurestack/resource-manager/Microsoft.AzureStack/stable/2017-06-01/Registration.json)
 * [azure_registration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_registration.md)
 
[relay.json](/tmp/azure-rest-api-specs/specification/relay/resource-manager/Microsoft.Relay/stable/2017-04-01/relay.json)
 * [azure_authorization_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_authorization_rule.md)
 * [azure_hybrid_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_hybrid_connection.md)
 * [azure_relay_namespace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relay_namespace.md)
 * [azure_wcf_relay](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_wcf_relay.md)
 
[resources.json](/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Resources/stable/2018-05-01/resources.json)
 * [azure_deployment_extended](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_deployment_extended.md)
 * [azure_generic_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_generic_resource.md)
 * [azure_resource_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_resource_group.md)
 * [azure_tag_details](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_tag_details.md)
 
[routefilter.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/routeFilter.json)
 * [azure_route_filter](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route_filter.md)
 * [azure_route_filter_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route_filter_rule.md)
 
[routetable.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/routeTable.json)
 * [azure_route](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route.md)
 * [azure_route_table](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_route_table.md)
 
[scheduledqueryrule_api.json](/tmp/azure-rest-api-specs/specification/monitor/resource-manager/Microsoft.Insights/stable/2018-04-16/scheduledQueryRule_API.json)
 * [azure_log_search_rule_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_log_search_rule_resource.md)
 
[search.json](/tmp/azure-rest-api-specs/specification/search/resource-manager/Microsoft.Search/stable/2015-08-19/search.json)
 * [azure_query_key](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_query_key.md)
 * [azure_search_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_search_service.md)
 
[serverazureadadministrators.json](/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/serverAzureADAdministrators.json)
 * [azure_server_azure_ad_administrator](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server_azure_ad_administrator.md)
 
[servercommunicationlinks.json](/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/serverCommunicationLinks.json)
 * [azure_server_communication_link](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server_communication_link.md)
 
[servers.json](/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/servers.json)
 * [azure_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server.md)
 
[service.json](/tmp/azure-rest-api-specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json)
 * [azure_fabric](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_fabric.md)
 * [azure_migration_item](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_migration_item.md)
 * [azure_network_mapping](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_network_mapping.md)
 * [azure_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_policy.md)
 * [azure_protection_container_mapping](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_protection_container_mapping.md)
 * [azure_recovery_plan](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_recovery_plan.md)
 * [azure_recovery_services_provider](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_recovery_services_provider.md)
 * [azure_replication_protected_item](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_replication_protected_item.md)
 * [azure_storage_classification_mapping](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_classification_mapping.md)
 * [azure_v_center](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_v_center.md)
 
[service.json(1)](/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json)
 * [azure_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate.md)
 * [azure_certificate_order](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_order.md)
 * [azure_certificate_order_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_certificate_order_certificate.md)
 * [azure_csr](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_csr.md)
 * [azure_deployment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_deployment.md)
 * [azure_domain](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_domain.md)
 * [azure_host_name_binding](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_host_name_binding.md)
 * [azure_hosting_environment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_hosting_environment.md)
 * [azure_relay_service_connection_entity](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relay_service_connection_entity.md)
 * [azure_server_farm_with_rich_sku](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server_farm_with_rich_sku.md)
 * [azure_site](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site.md)
 * [azure_site_source_control](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site_source_control.md)
 * [azure_vnet_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vnet_info.md)
 * [azure_vnet_route](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vnet_route.md)
 
[servicebus.json](/tmp/azure-rest-api-specs/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json)
 * [azure_arm_disaster_recovery](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_arm_disaster_recovery.md)
 * [azure_migration_config_properties](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_migration_config_properties.md)
 * [azure_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_rule.md)
 * [azure_sb_authorization_rule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_authorization_rule.md)
 * [azure_sb_namespace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_namespace.md)
 * [azure_sb_queue](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_queue.md)
 * [azure_sb_subscription](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_subscription.md)
 * [azure_sb_topic](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sb_topic.md)
 
[serviceendpointpolicy.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/serviceEndpointPolicy.json)
 * [azure_service_endpoint_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_service_endpoint_policy.md)
 * [azure_service_endpoint_policy_definition](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_service_endpoint_policy_definition.md)
 
[servicefabric.json](/tmp/azure-rest-api-specs/specification/servicefabric/resource-manager/Microsoft.ServiceFabric/stable/2016-09-01/servicefabric.json)
 * [azure_cluster](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cluster.md)
 
[signalr.json](/tmp/azure-rest-api-specs/specification/signalr/resource-manager/Microsoft.SignalRService/stable/2018-10-01/signalr.json)
 * [azure_signal_r_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_signal_r_resource.md)
 
[storage.json](/tmp/azure-rest-api-specs/specification/storage/resource-manager/Microsoft.Storage/stable/2018-07-01/storage.json)
 * [azure_storage_account](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_account.md)
 
[storageimportexport.json](/tmp/azure-rest-api-specs/specification/storageimportexport/resource-manager/Microsoft.ImportExport/stable/2016-11-01/storageimportexport.json)
 * [azure_job_response](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_job_response.md)
 
[storagesync.json](/tmp/azure-rest-api-specs/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-10-01/storagesync.json)
 * [azure_cloud_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_cloud_endpoint.md)
 * [azure_registered_server](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_registered_server.md)
 * [azure_server_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_server_endpoint.md)
 * [azure_storage_sync_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_sync_service.md)
 * [azure_sync_group](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_sync_group.md)
 
[storsimple.json](/tmp/azure-rest-api-specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json)
 * [azure_access_control_record](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_access_control_record.md)
 * [azure_backup_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_backup_policy.md)
 * [azure_backup_schedule](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_backup_schedule.md)
 * [azure_bandwidth_setting](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_bandwidth_setting.md)
 * [azure_manager](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_manager.md)
 * [azure_manager_extended_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_manager_extended_info.md)
 * [azure_storage_account_credential](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_storage_account_credential.md)
 * [azure_volume](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_volume.md)
 * [azure_volume_container](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_volume_container.md)
 
[streamingjobs.json](/tmp/azure-rest-api-specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/streamingjobs.json)
 * [azure_streaming_job](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_streaming_job.md)
 
[streamingpoliciesandstreaminglocators.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/StreamingPoliciesAndStreamingLocators.json)
 * [azure_streaming_locator](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_streaming_locator.md)
 * [azure_streaming_policy](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_streaming_policy.md)
 
[streamingservice.json](/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/streamingservice.json)
 * [azure_live_event](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_live_event.md)
 * [azure_live_output](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_live_output.md)
 * [azure_streaming_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_streaming_endpoint.md)
 
[timeseriesinsights.json](/tmp/azure-rest-api-specs/specification/timeseriesinsights/resource-manager/Microsoft.TimeSeriesInsights/stable/2017-11-15/timeseriesinsights.json)
 * [azure_access_policy_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_access_policy_resource.md)
 * [azure_environment_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_environment_resource.md)
 * [azure_event_source_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_event_source_resource.md)
 * [azure_reference_data_set_resource](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_reference_data_set_resource.md)
 
[trafficmanager.json](/tmp/azure-rest-api-specs/specification/trafficmanager/resource-manager/Microsoft.Network/stable/2018-04-01/trafficmanager.json)
 * [azure_endpoint](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_endpoint.md)
 * [azure_profile](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_profile.md)
 * [azure_user_metrics_model](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_user_metrics_model.md)
 
[vaults.json](/tmp/azure-rest-api-specs/specification/recoveryservices/resource-manager/Microsoft.RecoveryServices/stable/2016-06-01/vaults.json)
 * [azure_vault](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vault.md)
 
[virtualnetwork.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/virtualNetwork.json)
 * [azure_subnet](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_subnet.md)
 * [azure_virtual_network](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network.md)
 * [azure_virtual_network_peering](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_peering.md)
 
[virtualnetworkgateway.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/virtualNetworkGateway.json)
 * [azure_local_network_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_local_network_gateway.md)
 * [azure_virtual_network_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_gateway.md)
 * [azure_virtual_network_gateway_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_gateway_connection.md)
 
[virtualnetworktap.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/virtualNetworkTap.json)
 * [azure_virtual_network_tap](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_network_tap.md)
 
[virtualwan.json](/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/virtualWan.json)
 * [azure_p2_s_vpn_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_p2_s_vpn_gateway.md)
 * [azure_p2_s_vpn_server_configuration](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_p2_s_vpn_server_configuration.md)
 * [azure_virtual_hub](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_hub.md)
 * [azure_virtual_wan](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_virtual_wan.md)
 * [azure_vpn_connection](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vpn_connection.md)
 * [azure_vpn_gateway](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vpn_gateway.md)
 * [azure_vpn_site](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_vpn_site.md)
 
[webapps.json](/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json)
 * [azure_deployment](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_deployment.md)
 * [azure_function_envelope](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_function_envelope.md)
 * [azure_host_name_binding](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_host_name_binding.md)
 * [azure_premier_add_on](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_premier_add_on.md)
 * [azure_public_certificate](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_public_certificate.md)
 * [azure_relay_service_connection_entity](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_relay_service_connection_entity.md)
 * [azure_site_extension_info](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site_extension_info.md)
 * [azure_site_source_control](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_site_source_control.md)
 * [azure_swift_virtual_network](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_swift_virtual_network.md)
 
[webservices.json](/tmp/azure-rest-api-specs/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2017-01-01/webservices.json)
 * [azure_web_service](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_web_service.md)
 
[webtests_api.json](/tmp/azure-rest-api-specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/webTests_API.json)
 * [azure_web_test](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_web_test.md)
 
[workbooks_api.json](/tmp/azure-rest-api-specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/workbooks_API.json)
 * [azure_workbook](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workbook.md)
 
[workspaces.json](/tmp/azure-rest-api-specs/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2016-04-01/workspaces.json)
 * [azure_workspace](https://github.com/puppetlabs/puppetlabs-azure_arm/blob/master/azure_workspace.md)

