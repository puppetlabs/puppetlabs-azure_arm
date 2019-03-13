Document: "managedapplications"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/resources/resource-manager/Microsoft.Solutions/stable/2018-06-01/managedapplications.json")

## Application

Information about managed application.

```puppet
azure_solutions_application {
  api_version => "api_version",
  identity => "identity (optional)",
  kind => "kind",
  location => "location (optional)",
  managed_by => "managed_by (optional)",
  parameters => "parameters",
  plan => $azure_plan
  properties => $azure_application_properties
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|identity | String | false | The identity of the resource. |
|kind | String | true | The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog. |
|location | String | false | Resource location |
|managed_by | String | false | ID of the resource that manages this resource. |
|parameters | Hash | true | Parameters supplied to the create or update a managed application. |
|plan | [Plan](#plan) | false | The plan information. |
|properties | [ApplicationProperties](#applicationproperties) | true | The managed application properties. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|sku | String | false | The SKU of the resource. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | Resource tags |
        
## Plan

Plan for the managed application.

```puppet
$azure_plan = {
  name => "name",
  product => "product",
  promotionCode => "promotionCode (optional)",
  publisher => "publisher",
  version => "version",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The plan name. |
|product | String | true | The product code. |
|promotionCode | String | false | The promotion code. |
|publisher | String | true | The publisher ID. |
|version | String | true | The plan's version. |
        
## ApplicationProperties

The managed application properties.

```puppet
$azure_application_properties = {
  applicationDefinitionId => "applicationDefinitionId (optional)",
  managedResourceGroupId => "managedResourceGroupId",
  parameters => "parameters (optional)",
  provisioningState => $azure_provisioning_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationDefinitionId | String | false | The fully qualified path of managed application definition Id. |
|managedResourceGroupId | String | true | The managed resource group Id. |
|parameters | Hash | false | Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The managed application provisioning state. |
        
## ProvisioningState

Provisioning status of the managed application.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Application

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applications/%{application_name}`|Put|Creates a new managed application.|Applications_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Solutions/applications`|Get|Gets all the applications within a subscription.|Applications_ListBySubscription|
|List - get one|`/%{application_id}`|Get|Gets the managed application.|Applications_GetById|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applications`|Get|Gets all the applications within a resource group.|Applications_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applications/%{application_name}`|Put|Creates a new managed application.|Applications_CreateOrUpdate|
|Delete|`/%{application_id}`|Delete|Deletes the managed application.|Applications_DeleteById|
