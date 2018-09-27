Document: "apimproperties"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimproperties.json")

## PropertyContract

Property details.

```puppet
azure_property_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_property_contract_properties
  prop_id => "prop_id",
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | The entity state (Etag) version of the property to delete. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|parameters | Hash | true | Create parameters. |
|properties | [PropertyContractProperties](#propertycontractproperties) | false | Property entity contract properties. |
|prop_id | String | true | Identifier of the property. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## PropertyContractProperties

Property Contract properties.

```puppet
$azure_property_contract_properties = {
  displayName => "displayName",
  secret => "secret (optional)",
  tags => "tags (optional)",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|displayName | String | true | Unique name of Property. It may contain only letters, digits, period, dash, and underscore characters. |
|secret | Boolean | false | Determines whether the value is a secret and should be encrypted or not. Default value is false. |
|tags | Array | false | Optional tags that when provided can be used to filter the property list. |
|value | String | true | Value of the property. Can contain policy expressions. It may not be empty or consist only of whitespace. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PropertyContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/properties/%{prop_id}`|Put|Creates or updates a property.|Property_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/properties/%{prop_id}`|Get|Gets the details of the property specified by its identifier.|Property_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/properties`|Get|Lists a collection of properties defined within a service instance.|Property_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/properties/%{prop_id}`|Put|Creates or updates a property.|Property_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/properties/%{prop_id}`|Delete|Deletes specific property from the the API Management service instance.|Property_Delete|
