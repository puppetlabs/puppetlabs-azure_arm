Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## RelationshipLinkResourceFormat

The relationship link resource format.

```puppet
azure_relationship_link_resource_format {
  api_version => "api_version",
  hub_name => "hub_name",
  parameters => "parameters",
  properties => $azure_relationship_link_definition
  relationship_link_name => "relationship_link_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|hub_name | String | true | The name of the hub. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate relationship link operation. |
|properties | [RelationshipLinkDefinition](#relationshiplinkdefinition) | false |  |
|relationship_link_name | String | true | The name of the relationship link. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RelationshipLinkDefinition

The definition of relationship link.

```puppet
$azure_relationship_link_definition = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  interactionType => "interactionType",
  mappings => $azure_relationship_link_field_mapping
  profilePropertyReferences => $azure_participant_profile_property_reference
  provisioningState => $azure_provisioning_state
  relatedProfilePropertyReferences => $azure_participant_profile_property_reference
  relationshipName => "relationshipName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | Hash | false | Localized descriptions for the Relationship Link. |
|displayName | Hash | false | Localized display name for the Relationship Link. |
|interactionType | String | true | The InteractionType associated with the Relationship Link. |
|mappings | [RelationshipLinkFieldMapping](#relationshiplinkfieldmapping) | false | The mappings between Interaction and Relationship fields. |
|profilePropertyReferences | [ParticipantProfilePropertyReference](#participantprofilepropertyreference) | true | The property references for the Profile of the Relationship. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | Provisioning state. |
|relatedProfilePropertyReferences | [ParticipantProfilePropertyReference](#participantprofilepropertyreference) | true | The property references for the Related Profile of the Relationship. |
|relationshipName | String | true | The Relationship associated with the Link. |
        
## RelationshipLinkFieldMapping

The fields mapping for Relationships.

```puppet
$azure_relationship_link_field_mapping = {
  interactionFieldName => "interactionFieldName",
  linkType => "linkType (optional)",
  relationshipFieldName => "relationshipFieldName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|interactionFieldName | String | true | The field name on the Interaction Type. |
|linkType | String | false | Link type. |
|relationshipFieldName | String | true | The field name on the Relationship metadata. |
        
## ParticipantProfilePropertyReference

The participant profile property reference.

```puppet
$azure_participant_profile_property_reference = {
  interactionPropertyName => "interactionPropertyName",
  profilePropertyName => "profilePropertyName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|interactionPropertyName | String | true | The source interaction property that maps to the target profile property. |
|profilePropertyName | String | true | The target profile property that maps to the source interaction property. |
        
## ProvisioningState

Provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RelationshipLinkResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationshipLinks/%{relationship_link_name}`|Put|Creates a relationship link or updates an existing relationship link within a hub.|RelationshipLinks_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationshipLinks/%{relationship_link_name}`|Get|Gets information about the specified relationship Link.|RelationshipLinks_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationshipLinks`|Get|Gets all relationship links in the hub.|RelationshipLinks_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationshipLinks/%{relationship_link_name}`|Put|Creates a relationship link or updates an existing relationship link within a hub.|RelationshipLinks_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationshipLinks/%{relationship_link_name}`|Delete|Deletes a relationship link within a hub.|RelationshipLinks_Delete|
