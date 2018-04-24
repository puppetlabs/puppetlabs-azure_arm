Document: "storsimple"
Path: "/root/specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## ManagerExtendedInfo

```puppet
azure_manager_extended_info {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  kind => "kind (optional)",
  manager_name => "manager_name",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_manager_extended_info_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|etag | String | false | The etag of the resource. |
|id | String | false | The path ID that uniquely identifies the object. |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|name | String | false | The name of the object. |
|parameters | Hash | true | The manager extended information. |
|properties | [ManagerExtendedInfoProperties](#managerextendedinfoproperties) | false | The extended info properties. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|type | String | false | The hierarchical type of the object. |
        
## ManagerExtendedInfoProperties

```puppet
$azure_manager_extended_info_properties = {
  algorithm => "algorithm",
  encryptionKey => "encryptionKey (optional)",
  encryptionKeyThumbprint => "encryptionKeyThumbprint (optional)",
  integrityKey => "integrityKey",
  portalCertificateThumbprint => "portalCertificateThumbprint (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|algorithm | String | true | Represents the encryption algorithm used to encrypt the keys. None - if Key is saved in plain text format. Algorithm name - if key is encrypted |
|encryptionKey | String | false | Represents the CEK of the resource. |
|encryptionKeyThumbprint | String | false | Represents the Cert thumbprint that was used to encrypt the CEK. |
|integrityKey | String | true | Represents the CIK of the resource. |
|portalCertificateThumbprint | String | false | Represents the portal thumbprint which can be used optionally to encrypt the entire data before storing it. |
|version | String | false | The version of the extended info being persisted. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ManagerExtendedInfo

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/extendedInformation/vaultExtendedInfo`|Put|Creates the extended info of the manager.|Managers_CreateExtendedInfo|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/extendedInformation/vaultExtendedInfo`|Get|Returns the extended information of the specified manager name.|Managers_GetExtendedInfo|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/extendedInformation/vaultExtendedInfo`|Put|Creates the extended info of the manager.|Managers_CreateExtendedInfo|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/extendedInformation/vaultExtendedInfo`|Delete|Deletes the extended info of the manager.|Managers_DeleteExtendedInfo|