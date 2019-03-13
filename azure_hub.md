Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## Hub

Hub resource.

```puppet
azure_hub {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_hub_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate Hub operation. |
|properties | [HubPropertiesFormat](#hubpropertiesformat) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## HubPropertiesFormat

Properties of hub.

```puppet
$azure_hub_properties_format = {
  hubBillingInfo => $azure_hub_billing_info_format
  tenantFeatures => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hubBillingInfo | [HubBillingInfoFormat](#hubbillinginfoformat) | false | Billing settings of the hub. |
|tenantFeatures | Integer | false | The bit flags for enabled hub features. Bit 0 is set to 1 indicates graph is enabled, or disabled if set to 0. Bit 1 is set to 1 indicates the hub is disabled, or enabled if set to 0. |
        
## HubBillingInfoFormat

Hub billing info.

```puppet
$azure_hub_billing_info_format = {
  maxUnits => "1234 (optional)",
  minUnits => "1234 (optional)",
  skuName => "skuName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|maxUnits | Integer | false | The maximum number of units can be used.  One unit is 10,000 Profiles and 100,000 Interactions. |
|minUnits | Integer | false | The minimum number of units will be billed. One unit is 10,000 Profiles and 100,000 Interactions. |
|skuName | String | false | The sku name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Hub

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}`|Put|Creates a hub, or updates an existing hub.|Hubs_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.CustomerInsights/hubs`|Get|Gets all hubs in the specified subscription.|Hubs_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}`|Get|Gets information about the specified hub.|Hubs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.CustomerInsights/hubs`|Get|Gets all hubs in the specified subscription.|Hubs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}`|Put|Creates a hub, or updates an existing hub.|Hubs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}`|Delete|Deletes the specified hub.|Hubs_Delete|
