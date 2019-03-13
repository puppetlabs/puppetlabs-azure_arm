Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## RelationshipResourceFormat

The relationship resource format.

```puppet
azure_relationship_resource_format {
  api_version => "api_version",
  hub_name => "hub_name",
  parameters => "parameters",
  properties => $azure_relationship_definition
  relationship_name => "relationship_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|hub_name | String | true | The name of the hub. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate Relationship operation. |
|properties | [RelationshipDefinition](#relationshipdefinition) | false |  |
|relationship_name | String | true | The name of the Relationship. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RelationshipDefinition

The definition of Relationship.

```puppet
$azure_relationship_definition = {
  cardinality => "cardinality (optional)",
  description => "description (optional)",
  displayName => "displayName (optional)",
  expiryDateTimeUtc => "expiryDateTimeUtc (optional)",
  fields => $azure_property_definition
  lookupMappings => $azure_relationship_type_mapping
  profileType => "profileType",
  provisioningState => $azure_provisioning_state
  relatedProfileType => "relatedProfileType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cardinality | String | false | The Relationship Cardinality. |
|description | Hash | false | Localized descriptions for the Relationship. |
|displayName | Hash | false | Localized display name for the Relationship. |
|expiryDateTimeUtc | String | false | The expiry date time in UTC. |
|fields | [PropertyDefinition](#propertydefinition) | false | The properties of the Relationship. |
|lookupMappings | [RelationshipTypeMapping](#relationshiptypemapping) | false | Optional property to be used to map fields in profile to their strong ids in related profile. |
|profileType | String | true | Profile type. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | Provisioning state. |
|relatedProfileType | String | true | Related profile being referenced. |
        
## PropertyDefinition

Property definition.

```puppet
$azure_property_definition = {
  arrayValueSeparator => "arrayValueSeparator (optional)",
  dataSourcePrecedenceRules => $azure_data_source_precedence
  enumValidValues => $azure_profile_enum_valid_values_format
  fieldName => "fieldName",
  fieldType => "fieldType",
  isArray => "isArray (optional)",
  isAvailableInGraph => "isAvailableInGraph (optional)",
  isEnum => "isEnum (optional)",
  isFlagEnum => "isFlagEnum (optional)",
  isImage => "isImage (optional)",
  isLocalizedString => "isLocalizedString (optional)",
  isName => "isName (optional)",
  isRequired => "isRequired (optional)",
  maxLength => "1234 (optional)",
  propertyId => "propertyId (optional)",
  schemaItemPropLink => "schemaItemPropLink (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|arrayValueSeparator | String | false | Array value separator for properties with isArray set. |
|dataSourcePrecedenceRules | [DataSourcePrecedence](#datasourceprecedence) | false | This is specific to interactions modeled as activities. Data sources are used to determine where data is stored and also in precedence rules. |
|enumValidValues | [ProfileEnumValidValuesFormat](#profileenumvalidvaluesformat) | false | Describes valid values for an enum property. |
|fieldName | String | true | Name of the property. |
|fieldType | String | true | Type of the property. |
|isArray | Boolean | false | Indicates if the property is actually an array of the fieldType above on the data api. |
|isAvailableInGraph | Boolean | false | Whether property is available in graph or not. |
|isEnum | Boolean | false | Indicates if the property is an enum. |
|isFlagEnum | Boolean | false | Indicates if the property is an flag enum. |
|isImage | Boolean | false | Whether the property is an Image. |
|isLocalizedString | Boolean | false | Whether the property is a localized string. |
|isName | Boolean | false | Whether the property is a name or a part of name. |
|isRequired | Boolean | false | Whether property value is required on instances, IsRequired field only for Interaction. Profile Instance will not check for required field. |
|maxLength | Integer | false | Max length of string. Used only if type is string. |
|propertyId | String | false | The ID associated with the property. |
|schemaItemPropLink | String | false | URL encoded schema.org item prop link for the property. |
        
## DataSourcePrecedence

The data source precedence is a way to know the precedence of each data source.

```puppet
$azure_data_source_precedence = {
  dataSource => $azure_data_source
  precedence => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataSource | [DataSource](#datasource) | false |  |
|precedence | Integer | false | the precedence value. |
        
## DataSource

Data Source is a way for us to know the source of instances. A single type can have data coming in from multiple places. In activities we use this to determine precedence rules.

```puppet
$azure_data_source = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ProfileEnumValidValuesFormat

Valid enum values in case of an enum property.

```puppet
$azure_profile_enum_valid_values_format = {
  localizedValueNames => "localizedValueNames (optional)",
  value => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|localizedValueNames | Hash | false | Localized names of the enum member. |
|value | Integer | false | The integer value of the enum member. |
        
## RelationshipTypeMapping

Maps fields in Profile to their corresponding StrongIds in Related Profile.

```puppet
$azure_relationship_type_mapping = {
  fieldMappings => $azure_relationship_type_field_mapping
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fieldMappings | [RelationshipTypeFieldMapping](#relationshiptypefieldmapping) | true | Maps a profile property with the StrongId of related profile. This is an array to support StrongIds that are composite key as well. |
        
## RelationshipTypeFieldMapping

Map a field of profile to its corresponding StrongId in Related Profile.

```puppet
$azure_relationship_type_field_mapping = {
  profileFieldName => "profileFieldName",
  relatedProfileKeyProperty => "relatedProfileKeyProperty",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|profileFieldName | String | true | Specifies the fieldName in profile. |
|relatedProfileKeyProperty | String | true | Specifies the KeyProperty (from StrongId) of the related profile. |
        
## ProvisioningState

Provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RelationshipResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationships/%{relationship_name}`|Put|Creates a relationship or updates an existing relationship within a hub.|Relationships_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationships/%{relationship_name}`|Get|Gets information about the specified relationship.|Relationships_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationships`|Get|Gets all relationships in the hub.|Relationships_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationships/%{relationship_name}`|Put|Creates a relationship or updates an existing relationship within a hub.|Relationships_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/relationships/%{relationship_name}`|Delete|Deletes a relationship within a hub.|Relationships_Delete|
