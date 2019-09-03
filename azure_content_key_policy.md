Document: "ContentKeyPolicies"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/ContentKeyPolicies.json")

## ContentKeyPolicy

A Content Key Policy resource.

```puppet
azure_content_key_policy {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_content_key_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|parameters | Hash | true | The request parameters |
|properties | [ContentKeyPolicyProperties](#contentkeypolicyproperties) | false |  |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
        
## ContentKeyPolicyProperties

The properties of the Content Key Policy.

```puppet
$azure_content_key_policy_properties = {
  description => "description (optional)",
  options => $azure_content_key_policy_option
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | A description for the Policy. |
|options | [ContentKeyPolicyOption](#contentkeypolicyoption) | true | The Key Policy options. |
        
## ContentKeyPolicyOption

Represents a policy option.

```puppet
$azure_content_key_policy_option = {
  configuration => $azure_content_key_policy_configuration
  name => "name (optional)",
  restriction => $azure_content_key_policy_restriction
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|configuration | [ContentKeyPolicyConfiguration](#contentkeypolicyconfiguration) | true | The key delivery configuration. |
|name | String | false | The Policy Option description. |
|restriction | [ContentKeyPolicyRestriction](#contentkeypolicyrestriction) | true | The requirements that must be met to deliver keys with this configuration |
        
## ContentKeyPolicyConfiguration

Base class for Content Key Policy configuration. A derived class must be used to create a configuration.

```puppet
$azure_content_key_policy_configuration = {
  @odata.type => "@odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|@odata.type | String | true | The discriminator for derived types. |
        
## ContentKeyPolicyRestriction

Base class for Content Key Policy restrictions. A derived class must be used to create a restriction.

```puppet
$azure_content_key_policy_restriction = {
  @odata.type => "@odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|@odata.type | String | true | The discriminator for derived types. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ContentKeyPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/contentKeyPolicies/%{content_key_policy_name}`|Put|Create or update a Content Key Policy in the Media Services account|ContentKeyPolicies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/contentKeyPolicies/%{content_key_policy_name}`|Get|Get the details of a Content Key Policy in the Media Services account|ContentKeyPolicies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/contentKeyPolicies`|Get|Lists the Content Key Policies in the account|ContentKeyPolicies_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/contentKeyPolicies/%{content_key_policy_name}`|Put|Create or update a Content Key Policy in the Media Services account|ContentKeyPolicies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/contentKeyPolicies/%{content_key_policy_name}`|Delete|Deletes a Content Key Policy in the Media Services account|ContentKeyPolicies_Delete|
