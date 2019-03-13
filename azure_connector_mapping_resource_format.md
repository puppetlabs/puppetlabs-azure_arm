Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## ConnectorMappingResourceFormat

The connector mapping resource format.

```puppet
azure_connector_mapping_resource_format {
  api_version => "api_version",
  connector_name => "connector_name",
  hub_name => "hub_name",
  mapping_name => "mapping_name",
  parameters => "parameters",
  properties => $azure_connector_mapping
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|connector_name | String | true | The name of the connector. |
|hub_name | String | true | The name of the hub. |
|mapping_name | String | true | The name of the connector mapping. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate Connector Mapping operation. |
|properties | [ConnectorMapping](#connectormapping) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ConnectorMapping

The connector mapping definition.

```puppet
$azure_connector_mapping = {
  connectorType => $azure_connector_type
  description => "description (optional)",
  displayName => "displayName (optional)",
  entityType => "entityType",
  entityTypeName => "entityTypeName",
  mappingProperties => $azure_connector_mapping_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectorType | [ConnectorType](#connectortype) | false | Type of connector. |
|description | String | false | The description of the connector mapping. |
|displayName | String | false | Display name for the connector mapping. |
|entityType | String | true | Defines which entity type the file should map to. |
|entityTypeName | String | true | The mapping entity name. |
|mappingProperties | [ConnectorMappingProperties](#connectormappingproperties) | true | The properties of the mapping. |
        
## ConnectorType

Type of connector.

```puppet
$azure_connector_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ConnectorMappingProperties

The connector mapping properties.

```puppet
$azure_connector_mapping_properties = {
  availability => $azure_connector_mapping_availability
  completeOperation => $azure_connector_mapping_complete_operation
  errorManagement => $azure_connector_mapping_error_management
  fileFilter => "fileFilter (optional)",
  folderPath => "folderPath (optional)",
  format => $azure_connector_mapping_format
  hasHeader => "hasHeader (optional)",
  structure => $azure_connector_mapping_structure
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availability | [ConnectorMappingAvailability](#connectormappingavailability) | true | The availability of mapping property. |
|completeOperation | [ConnectorMappingCompleteOperation](#connectormappingcompleteoperation) | true | The operation after import is done. |
|errorManagement | [ConnectorMappingErrorManagement](#connectormappingerrormanagement) | true | The error management setting for the mapping. |
|fileFilter | String | false | The file filter for the mapping. |
|folderPath | String | false | The folder path for the mapping. |
|format | [ConnectorMappingFormat](#connectormappingformat) | true | The format of mapping property. |
|hasHeader | Boolean | false | If the file contains a header or not. |
|structure | [ConnectorMappingStructure](#connectormappingstructure) | true | Ingestion mapping information at property level. |
        
## ConnectorMappingAvailability

Connector mapping property availability.

```puppet
$azure_connector_mapping_availability = {
  frequency => "frequency (optional)",
  interval => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|frequency | String | false | The frequency to update. |
|interval | Integer | true | The interval of the given frequency to use. |
        
## ConnectorMappingCompleteOperation

The complete operation.

```puppet
$azure_connector_mapping_complete_operation = {
  completionOperationType => "completionOperationType (optional)",
  destinationFolder => "destinationFolder (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|completionOperationType | String | false | The type of completion operation. |
|destinationFolder | String | false | The destination folder where files will be moved to once the import is done. |
        
## ConnectorMappingErrorManagement

The error management.

```puppet
$azure_connector_mapping_error_management = {
  errorLimit => "1234 (optional)",
  errorManagementType => "errorManagementType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|errorLimit | Integer | false | The error limit allowed while importing data. |
|errorManagementType | String | true | The type of error management to use for the mapping. |
        
## ConnectorMappingFormat

Connector mapping property format.

```puppet
$azure_connector_mapping_format = {
  acceptLanguage => "acceptLanguage (optional)",
  arraySeparator => "arraySeparator (optional)",
  columnDelimiter => "columnDelimiter (optional)",
  formatType => "formatType",
  quoteCharacter => "quoteCharacter (optional)",
  quoteEscapeCharacter => "quoteEscapeCharacter (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acceptLanguage | String | false | The oData language. |
|arraySeparator | String | false | Character separating array elements. |
|columnDelimiter | String | false | The character that signifies a break between columns. |
|formatType | String | true | The type mapping format. |
|quoteCharacter | String | false | Quote character, used to indicate enquoted fields. |
|quoteEscapeCharacter | String | false | Escape character for quotes, can be the same as the quoteCharacter. |
        
## ConnectorMappingStructure

Connector mapping property structure.

```puppet
$azure_connector_mapping_structure = {
  columnName => "columnName",
  customFormatSpecifier => "customFormatSpecifier (optional)",
  isEncrypted => "isEncrypted (optional)",
  propertyName => "propertyName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|columnName | String | true | The column name of the import file. |
|customFormatSpecifier | String | false | Custom format specifier for input parsing. |
|isEncrypted | Boolean | false | Indicates if the column is encrypted. |
|propertyName | String | true | The property name of the mapping entity. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ConnectorMappingResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}/mappings/%{mapping_name}`|Put|Creates a connector mapping or updates an existing connector mapping in the connector.|ConnectorMappings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}/mappings/%{mapping_name}`|Get|Gets a connector mapping in the connector.|ConnectorMappings_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}/mappings`|Get|Gets all the connector mappings in the specified connector.|ConnectorMappings_ListByConnector|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}/mappings/%{mapping_name}`|Put|Creates a connector mapping or updates an existing connector mapping in the connector.|ConnectorMappings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}/mappings/%{mapping_name}`|Delete|Deletes a connector mapping in the connector.|ConnectorMappings_Delete|
