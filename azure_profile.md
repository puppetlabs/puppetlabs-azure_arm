Document: "cdn"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/cdn/resource-manager/Microsoft.Cdn/stable/2017-10-12/cdn.json")

## Profile

CDN profile is a logical grouping of endpoints that share the same settings, such as CDN provider and pricing tier.

```puppet
azure_profile {
  api_version => "api_version",
  location => "location (optional)",
  profile => "profile",
  properties => $azure_profile_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. Current version is 2017-04-02. |
|location | String | false | Resource location. |
|profile | Hash | true | Profile properties needed to create a new profile. |
|properties | [ProfileProperties](#profileproperties) | false |  |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|sku | [Sku](#sku) | true | The pricing tier (defines a CDN provider, feature list and rate) of the CDN profile. |
|subscription_id | String | true | Azure Subscription ID. |
|tags | Hash | false | Resource tags. |
        
## ProfileProperties

The JSON object that contains the properties required to create a profile.

```puppet
$azure_profile_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Sku

The pricing tier (defines a CDN provider, feature list and rate) of the CDN profile.

```puppet
$azure_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of the pricing tier. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Profile

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}`|Put|Creates a new CDN profile with a profile name under the specified subscription and resource group.|Profiles_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Cdn/profiles`|Get|Lists all of the CDN profiles within an Azure subscription.|Profiles_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}`|Get|Gets a CDN profile with the specified profile name under the specified subscription and resource group.|Profiles_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Cdn/profiles`|Get|Lists all of the CDN profiles within an Azure subscription.|Profiles_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}`|Put|Creates a new CDN profile with a profile name under the specified subscription and resource group.|Profiles_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}`|Delete|Deletes an existing CDN profile with the specified parameters. Deleting a profile will result in the deletion of all of the sub-resources including endpoints, origins and custom domains.|Profiles_Delete|
