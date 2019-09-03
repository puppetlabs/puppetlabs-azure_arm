Document: "edgegateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2019-03-01/edgegateway.json")

## User

Represents a user who has access to one or more shares on the Data Box Edge/Gateway device.

```puppet
azure_user {
  api_version => "api_version",
  device_name => "device_name",
  properties => $azure_user_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  user => "user",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|device_name | String | true | The device name. |
|properties | [UserProperties](#userproperties) | true | The storage account credential properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription ID. |
|user | Hash | true | The user details. |
        
## UserProperties

The user properties.

```puppet
$azure_user_properties = {
  encryptedPassword => $azure_asymmetric_encrypted_secret
  shareAccessRights => $azure_share_access_right
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encryptedPassword | [AsymmetricEncryptedSecret](#asymmetricencryptedsecret) | false | The password details. |
|shareAccessRights | [ShareAccessRight](#shareaccessright) | false | List of shares that the user has rights on. This field should not be specified during user creation. |
        
## AsymmetricEncryptedSecret

Represent the secrets intended for encryption with asymmetric key pair.

```puppet
$azure_asymmetric_encrypted_secret = {
  encryptionAlgorithm => "encryptionAlgorithm",
  encryptionCertThumbprint => "encryptionCertThumbprint (optional)",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encryptionAlgorithm | String | true | The algorithm used to encrypt 'Value'. |
|encryptionCertThumbprint | String | false | Thumbprint certificate used to encrypt \'Value\'. If the value is unencrypted, it will be null. |
|value | String | true | The value of the secret. |
        
## ShareAccessRight

Specifies the mapping between this particular user and the type of access he has on shares on this device.

```puppet
$azure_share_access_right = {
  accessType => "accessType",
  shareId => "shareId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessType | String | true | Type of access to be allowed on the share for this user. |
|shareId | String | true | The share ID. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the User

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/users/%{name}`|Put|Creates a new user or updates an existing user's information on a data box edge/gateway device.|Users_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/users/%{name}`|Get|Gets the properties of the specified user.|Users_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/users`|Get|Gets all the users registered on a data box edge/gateway device.|Users_ListByDataBoxEdgeDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/users/%{name}`|Put|Creates a new user or updates an existing user's information on a data box edge/gateway device.|Users_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/users/%{name}`|Delete|Deletes the user on a databox edge/gateway device.|Users_Delete|
