Document: "signalr"


Path: "/tmp/azure-rest-api-specs/specification/signalr/resource-manager/Microsoft.SignalRService/stable/2018-10-01/signalr.json")

## SignalRResource

A class represent a SignalR service resource.

```puppet
azure_signal_r_resource {
  api_version => "api_version",
  location => "location (optional)",
  properties => $azure_signal_r_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  sku => $azure_resource_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | The GEO location of the SignalR service. e.g. West US | East US | North Central US | South Central US. |
|properties | [SignalRProperties](#signalrproperties) | false | The properties of the service. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|resource_name | String | true | The name of the SignalR resource. |
|sku | [ResourceSku](#resourcesku) | false | SKU of the service. |
|subscription_id | String | true | Gets subscription Id which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Tags of the service which is a list of key value pairs that describe the resource. |
        
## SignalRProperties

A class that describes the properties of the SignalR service that should contain more read-only properties than AzSignalR.Models.SignalRCreateOrUpdateProperties

```puppet
$azure_signal_r_properties = {
  hostNamePrefix => "hostNamePrefix (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hostNamePrefix | String | false | Prefix for the hostName of the SignalR service. Retained for future use.The hostname will be of format: &lt;hostNamePrefix&gt;.service.signalr.net. |
|version | String | false | Version of the SignalR resource. Probably you need the same or higher version of client SDKs. |
        
## ResourceSku

The billing information of the resource.(e.g. basic vs. standard)

```puppet
$azure_resource_sku = {
  capacity => "1234 (optional)",
  family => "family (optional)",
  name => "name",
  size => "size (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | Optional, integer. If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted. |
|family | String | false | Optional, string. If the service has different generations of hardware, for the same SKU, then that can be captured here. |
|name | String | true | The name of the SKU. This is typically a letter + number code, such as A0 or P3.  Required (if sku is specified) |
|size | String | false | Optional, string. When the name field is the combination of tier and some other value, this would be the standalone code. |
|tier | String | false | Optional tier of this particular SKU. `Basic` is deprecated, use `Standard` instead for Basic tier. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SignalRResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.SignalRService/SignalR/%{resource_name}`|Put|Create a new SignalR service and update an exiting SignalR service.|SignalR_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.SignalRService/SignalR`|Get|Handles requests to list all resources in a subscription.|SignalR_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.SignalRService/SignalR/%{resource_name}`|Get|Get the SignalR service and its properties.|SignalR_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.SignalRService/SignalR`|Get|Handles requests to list all resources in a subscription.|SignalR_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.SignalRService/SignalR/%{resource_name}`|Put|Create a new SignalR service and update an exiting SignalR service.|SignalR_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.SignalRService/SignalR/%{resource_name}`|Delete|Operation to delete a SignalR service.|SignalR_Delete|
