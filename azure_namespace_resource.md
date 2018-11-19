Document: "notificationhubs"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/notificationhubs/resource-manager/Microsoft.NotificationHubs/stable/2017-04-01/notificationhubs.json")

## NamespaceResource

Description of a Namespace resource.

```puppet
azure_namespace_resource {
  api_version => "api_version",
  location => "location (optional)",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => $azure_namespace_properties
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|namespace_name | String | true | The namespace name. |
|parameters | Hash | true | Parameters supplied to create a Namespace Resource. |
|properties | [NamespaceProperties](#namespaceproperties) | false | Properties of the Namespace. |
|resource_group_name | String | true | The name of the resource group. |
|sku | String | false | The sku of the created namespace |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## NamespaceProperties

Namespace properties.

```puppet
$azure_namespace_properties = {
  createdAt => "createdAt (optional)",
  critical => "critical (optional)",
  dataCenter => "dataCenter (optional)",
  enabled => "enabled (optional)",
  name => "name (optional)",
  namespaceType => "namespaceType (optional)",
  provisioningState => "provisioningState (optional)",
  region => "region (optional)",
  scaleUnit => "scaleUnit (optional)",
  serviceBusEndpoint => "serviceBusEndpoint (optional)",
  status => "status (optional)",
  subscriptionId => "subscriptionId (optional)",
  updatedAt => "updatedAt (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|createdAt | String | false | The time the namespace was created. |
|critical | Boolean | false | Whether or not the namespace is set as Critical. |
|dataCenter | String | false | Data center for the namespace |
|enabled | Boolean | false | Whether or not the namespace is currently enabled. |
|name | String | false | The name of the namespace. |
|namespaceType | String | false | The namespace type. |
|provisioningState | String | false | Provisioning state of the Namespace. |
|region | String | false | Specifies the targeted region in which the namespace should be created. It can be any of the following values: Australia EastAustralia SoutheastCentral USEast USEast US 2West USNorth Central USSouth Central USEast AsiaSoutheast AsiaBrazil SouthJapan EastJapan WestNorth EuropeWest Europe |
|scaleUnit | String | false | ScaleUnit where the namespace gets created |
|serviceBusEndpoint | String | false | Endpoint you can use to perform NotificationHub operations. |
|status | String | false | Status of the namespace. It can be any of these values:1 = Created/Active2 = Creating3 = Suspended4 = Deleting |
|subscriptionId | String | false | The Id of the Azure subscription associated with the namespace. |
|updatedAt | String | false | The time the namespace was updated. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the NamespaceResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}`|Put|Creates/Updates a service namespace. Once created, this namespace's resource manifest is immutable. This operation is idempotent.|Namespaces_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.NotificationHubs/namespaces`|Get|Lists all the available namespaces within the subscription irrespective of the resourceGroups.|Namespaces_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}`|Get|Returns the description for the specified namespace.|Namespaces_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces`|Get|Lists the available namespaces within a resourceGroup.|Namespaces_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}`|Put|Creates/Updates a service namespace. Once created, this namespace's resource manifest is immutable. This operation is idempotent.|Namespaces_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}`|Delete|Deletes an existing namespace. This operation also removes all associated notificationHubs under the namespace.|Namespaces_Delete|
