Document: "service"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## ServerFarmWithRichSku

```puppet
azure_server_farm_with_rich_sku {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  server_farm_envelope => "serverFarmEnvelope",
  sku => $azure_sku_description
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Name of resource group |
|server_farm_envelope | Hash | true | Details of App Service Plan |
|sku | [SkuDescription](#skudescription) | false |  |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## SkuDescription

```puppet
$azure_sku_description = {
  capacity => "1234 (optional)",
  family => "family (optional)",
  name => "name (optional)",
  size => "size (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | Current number of instances assigned to the resource |
|family | String | false | Family code of the resource sku |
|name | String | false | Name of the resource sku |
|size | String | false | Size specifier of the resource sku |
|tier | String | false | Service Tier of the resource sku |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServerFarmWithRichSku

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}`|Put||ServerFarms_CreateOrUpdateServerFarm|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/serverfarms`|Get||Global_GetAllServerFarms|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}/operationresults/%{operation_id}`|Get||ServerFarms_GetServerFarmOperation|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}/serverfarms`|Get||HostingEnvironments_GetHostingEnvironmentServerFarms|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}`|Put||ServerFarms_CreateOrUpdateServerFarm|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}`|Delete||ServerFarms_DeleteServerFarm|