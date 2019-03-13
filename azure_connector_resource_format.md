Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## ConnectorResourceFormat

The connector resource format.

```puppet
azure_connector_resource_format {
  api_version => "api_version",
  connector_name => "connector_name",
  hub_name => "hub_name",
  parameters => "parameters",
  properties => $azure_connector
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|connector_name | String | true | The name of the connector. |
|hub_name | String | true | The name of the hub. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate Connector operation. |
|properties | [Connector](#connector) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## Connector

Properties of connector.

```puppet
$azure_connector = {
  connectorName => "connectorName (optional)",
  connectorProperties => "connectorProperties",
  connectorType => $azure_connector_type
  description => "description (optional)",
  displayName => "displayName (optional)",
  isInternal => "isInternal (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectorName | String | false | Name of the connector. |
|connectorProperties | Hash | true | The connector properties. |
|connectorType | [ConnectorType](#connectortype) | true | Type of connector. |
|description | String | false | Description of the connector. |
|displayName | String | false | Display name of the connector. |
|isInternal | Boolean | false | If this is an internal connector. |
        
## ConnectorType

Type of connector.

```puppet
$azure_connector_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ConnectorResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}`|Put|Creates a connector or updates an existing connector in the hub.|Connectors_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}`|Get|Gets a connector in the hub.|Connectors_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors`|Get|Gets all the connectors in the specified hub.|Connectors_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}`|Put|Creates a connector or updates an existing connector in the hub.|Connectors_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/connectors/%{connector_name}`|Delete|Deletes a connector in the hub.|Connectors_Delete|
