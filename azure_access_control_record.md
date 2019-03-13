Document: "storsimple"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## AccessControlRecord

The access control record.

```puppet
azure_access_control_record {
  api_version => "api_version",
  kind => "kind (optional)",
  manager_name => "manager_name",
  parameters => "parameters",
  properties => $azure_access_control_record_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|parameters | Hash | true | The access control record to be added or updated. |
|properties | [AccessControlRecordProperties](#accesscontrolrecordproperties) | true | The properties of access control record. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
        
## AccessControlRecordProperties

The properties of access control record.

```puppet
$azure_access_control_record_properties = {
  initiatorName => "initiatorName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|initiatorName | String | true | The iSCSI initiator name (IQN). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AccessControlRecord

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/accessControlRecords/%{access_control_record_name}`|Put|Creates or Updates an access control record.|AccessControlRecords_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/accessControlRecords/%{access_control_record_name}`|Get|Returns the properties of the specified access control record name.|AccessControlRecords_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/accessControlRecords`|Get|Retrieves all the access control records in a manager.|AccessControlRecords_ListByManager|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/accessControlRecords/%{access_control_record_name}`|Put|Creates or Updates an access control record.|AccessControlRecords_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/accessControlRecords/%{access_control_record_name}`|Delete|Deletes the access control record.|AccessControlRecords_Delete|
