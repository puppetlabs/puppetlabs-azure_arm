Document: "storsimple"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## Manager

The StorSimple Manager.

```puppet
azure_manager {
  api_version => "api_version",
  etag => "etag (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_manager_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|etag | String | false | The etag of the manager. |
|location | String | false | The geo location of the resource. |
|parameters | Hash | true | The manager. |
|properties | [ManagerProperties](#managerproperties) | false | The properties of the StorSimple Manager. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|tags | Hash | false | The tags attached to the resource. |
        
## ManagerProperties

The properties of the StorSimple Manager.

```puppet
$azure_manager_properties = {
  cisIntrinsicSettings => $azure_manager_intrinsic_settings
  provisioningState => "provisioningState (optional)",
  sku => $azure_manager_sku
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cisIntrinsicSettings | [ManagerIntrinsicSettings](#managerintrinsicsettings) | false | Represents the type of StorSimple Manager. |
|provisioningState | String | false | Specifies the state of the resource as it is getting provisioned. Value of 'Succeeded' means the Manager was successfully created. |
|sku | [ManagerSku](#managersku) | false | Specifies the Sku. |
        
## ManagerIntrinsicSettings

Intrinsic settings which refers to the type of the StorSimple Manager.

```puppet
$azure_manager_intrinsic_settings = {
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | true | The type of StorSimple Manager. |
        
## ManagerSku

The Sku.

```puppet
$azure_manager_sku = {
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | Refers to the sku name which should be 'Standard' |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Manager

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}`|Put|Creates or updates the manager.|Managers_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.StorSimple/managers`|Get|Retrieves all the managers in a subscription.|Managers_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}`|Get|Returns the properties of the specified manager name.|Managers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.StorSimple/managers`|Get|Retrieves all the managers in a subscription.|Managers_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}`|Put|Creates or updates the manager.|Managers_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}`|Delete|Deletes the manager.|Managers_Delete|
