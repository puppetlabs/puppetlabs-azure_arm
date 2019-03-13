Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## ProfileResourceFormat

The profile resource format.

```puppet
azure_profile_resource_format {
  api_version => "api_version",
  hub_name => "hub_name",
  parameters => "parameters",
  profile_name => "profile_name",
  properties => $azure_profile_type_definition
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|hub_name | String | true | The name of the hub. |
|parameters | Hash | true | Parameters supplied to the create/delete Profile type operation |
|profile_name | String | true | The name of the profile. |
|properties | [ProfileTypeDefinition](#profiletypedefinition) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ProfileTypeDefinition

The profile type definition.

```puppet
$azure_profile_type_definition = {
  apiEntitySetName => "apiEntitySetName (optional)",
  attributes => "attributes (optional)",
  description => "description (optional)",
  displayName => "displayName (optional)",
  entityType => "entityType (optional)",
  fields => "fields (optional)",
  instancesCount => "1234 (optional)",
  largeImage => "largeImage (optional)",
  localizedAttributes => "localizedAttributes (optional)",
  mediumImage => "mediumImage (optional)",
  schemaItemTypeLink => "schemaItemTypeLink (optional)",
  smallImage => "smallImage (optional)",
  strongIds => $azure_strong_id
  timestampFieldName => "timestampFieldName (optional)",
  typeName => "typeName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiEntitySetName | String | false | The api entity set name. This becomes the odata entity set name for the entity Type being referred in this object. |
|attributes | Hash | false | The attributes for the Type. |
|description | Hash | false | Localized descriptions for the property. |
|displayName | Hash | false | Localized display names for the property. |
|entityType | String | false | Type of entity. |
|fields | Array | false | The properties of the Profile. |
|instancesCount | Integer | false | The instance count. |
|largeImage | String | false | Large Image associated with the Property or EntityType. |
|localizedAttributes | Hash | false | Any custom localized attributes for the Type. |
|mediumImage | String | false | Medium Image associated with the Property or EntityType. |
|schemaItemTypeLink | String | false | The schema org link. This helps ACI identify and suggest semantic models. |
|smallImage | String | false | Small Image associated with the Property or EntityType. |
|strongIds | [StrongId](#strongid) | false | The strong IDs. |
|timestampFieldName | String | false | The timestamp property name. Represents the time when the interaction or profile update happened. |
|typeName | String | false | The name of the entity. |
        
## StrongId

Property/Properties which represent a unique ID.

```puppet
$azure_strong_id = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  keyPropertyNames => "keyPropertyNames",
  strongIdName => "strongIdName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | Hash | false | Localized descriptions. |
|displayName | Hash | false | Localized display name. |
|keyPropertyNames | Array | true | The properties which make up the unique ID. |
|strongIdName | String | true | The Name identifying the strong ID. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ProfileResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/profiles/%{profile_name}`|Put|Creates a profile within a Hub, or updates an existing profile.|Profiles_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/profiles/%{profile_name}`|Get|Gets information about the specified profile.|Profiles_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/profiles`|Get|Gets all profile in the hub.|Profiles_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/profiles/%{profile_name}`|Put|Creates a profile within a Hub, or updates an existing profile.|Profiles_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/profiles/%{profile_name}`|Delete|Deletes a profile within a hub|Profiles_Delete|
