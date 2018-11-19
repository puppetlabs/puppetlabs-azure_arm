Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## LinkResourceFormat

The link resource format.

```puppet
azure_link_resource_format {
  api_version => "api_version",
  hub_name => "hub_name",
  link_name => "link_name",
  parameters => "parameters",
  properties => $azure_link_definition
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|hub_name | String | true | The name of the hub. |
|link_name | String | true | The name of the link. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate Link operation. |
|properties | [LinkDefinition](#linkdefinition) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## LinkDefinition

The definition of Link.

```puppet
$azure_link_definition = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  mappings => $azure_type_properties_mapping
  operationType => "operationType (optional)",
  participantPropertyReferences => $azure_participant_property_reference
  provisioningState => $azure_provisioning_state
  referenceOnly => "referenceOnly (optional)",
  sourceEntityType => "sourceEntityType",
  sourceEntityTypeName => "sourceEntityTypeName",
  targetEntityType => "targetEntityType",
  targetEntityTypeName => "targetEntityTypeName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | Hash | false | Localized descriptions for the Link. |
|displayName | Hash | false | Localized display name for the Link. |
|mappings | [TypePropertiesMapping](#typepropertiesmapping) | false | The set of properties mappings between the source and target Types. |
|operationType | String | false | Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only. |
|participantPropertyReferences | [ParticipantPropertyReference](#participantpropertyreference) | true | The properties that represent the participating profile. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | Provisioning state. |
|referenceOnly | Boolean | false | Indicating whether the link is reference only link. This flag is ingored if the Mappings are defined. If the mappings are not defined and it is set to true, links processing will not create or update profiles. |
|sourceEntityType | String | true | Type of source entity. |
|sourceEntityTypeName | String | true | Name of the source Entity Type. |
|targetEntityType | String | true | Type of target entity. |
|targetEntityTypeName | String | true | Name of the target Entity Type. |
        
## TypePropertiesMapping

Metadata for a Link's property mapping.

```puppet
$azure_type_properties_mapping = {
  linkType => "linkType (optional)",
  sourcePropertyName => "sourcePropertyName",
  targetPropertyName => "targetPropertyName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|linkType | String | false | Link type. |
|sourcePropertyName | String | true |  Property name on the source Entity Type. |
|targetPropertyName | String | true | Property name on the target Entity Type. |
        
## ParticipantPropertyReference

The participant property reference.

```puppet
$azure_participant_property_reference = {
  sourcePropertyName => "sourcePropertyName",
  targetPropertyName => "targetPropertyName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|sourcePropertyName | String | true | The source property that maps to the target property. |
|targetPropertyName | String | true | The target property that maps to the source property. |
        
## ProvisioningState

Provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LinkResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/links/%{link_name}`|Put|Creates a link or updates an existing link in the hub.|Links_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/links/%{link_name}`|Get|Gets a link in the hub.|Links_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/links`|Get|Gets all the links in the specified hub.|Links_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/links/%{link_name}`|Put|Creates a link or updates an existing link in the hub.|Links_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/links/%{link_name}`|Delete|Deletes a link in the hub.|Links_Delete|
