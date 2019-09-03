Document: "healthcare-apis"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/healthcareapis/resource-manager/Microsoft.HealthcareApis/stable/2019-09-16/healthcare-apis.json")

## ServicesDescription

The description of the service.

```puppet
azure_services_description {
  api_version => "api_version",
  etag => "etag (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  properties => $azure_services_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  service_description => "serviceDescription",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|etag | String | false | An etag associated with the resource, used for optimistic concurrency when editing it. |
|kind | String | false | The kind of the service. |
|location | String | false | The resource location. |
|properties | [ServicesProperties](#servicesproperties) | false | The common properties of a service. |
|resource_group_name | String | true | The name of the resource group that contains the service instance. |
|resource_name | String | true | The name of the service instance. |
|service_description | Hash | true | The service instance metadata. |
|subscription_id | String | true | The subscription identifier. |
|tags | Hash | false | The resource tags. |
        
## ServicesProperties

The properties of a service instance.

```puppet
$azure_services_properties = {
  accessPolicies => $azure_service_access_policies_info
  authenticationConfiguration => $azure_service_authentication_configuration_info
  corsConfiguration => $azure_service_cors_configuration_info
  cosmosDbConfiguration => $azure_service_cosmos_db_configuration_info
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessPolicies | [ServiceAccessPoliciesInfo](#serviceaccesspoliciesinfo) | true | The access policies of the service instance. |
|authenticationConfiguration | [ServiceAuthenticationConfigurationInfo](#serviceauthenticationconfigurationinfo) | false | The authentication configuration for the service instance. |
|corsConfiguration | [ServiceCorsConfigurationInfo](#servicecorsconfigurationinfo) | false | The settings for the CORS configuration of the service instance. |
|cosmosDbConfiguration | [ServiceCosmosDbConfigurationInfo](#servicecosmosdbconfigurationinfo) | false | The settings for the Cosmos DB database backing the service. |
        
## ServiceAccessPoliciesInfo

The access policies of the service instance.

```puppet
$azure_service_access_policies_info = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ServiceAuthenticationConfigurationInfo

Authentication configuration information

```puppet
$azure_service_authentication_configuration_info = {
  audience => "audience (optional)",
  authority => "authority (optional)",
  smartProxyEnabled => "smartProxyEnabled (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|audience | String | false | The audience url for the service |
|authority | String | false | The authority url for the service |
|smartProxyEnabled | Boolean | false | If the SMART on FHIR proxy is enabled |
        
## ServiceCorsConfigurationInfo

The settings for the CORS configuration of the service instance.

```puppet
$azure_service_cors_configuration_info = {
  allowCredentials => "allowCredentials (optional)",
  headers => $azure_service_cors_configuration_header_entry
  maxAge => "1234 (optional)",
  methods => $azure_service_cors_configuration_method_entry
  origins => $azure_service_cors_configuration_origin_entry
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowCredentials | Boolean | false | If credentials are allowed via CORS. |
|headers | [ServiceCorsConfigurationHeaderEntry](#servicecorsconfigurationheaderentry) | false | The headers to be allowed via CORS. |
|maxAge | Integer | false | The max age to be allowed via CORS. |
|methods | [ServiceCorsConfigurationMethodEntry](#servicecorsconfigurationmethodentry) | false | The methods to be allowed via CORS. |
|origins | [ServiceCorsConfigurationOriginEntry](#servicecorsconfigurationoriginentry) | false | The origins to be allowed via CORS. |
        
## ServiceCorsConfigurationHeaderEntry

A header for CORS.

```puppet
$azure_service_cors_configuration_header_entry = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ServiceCorsConfigurationMethodEntry

A method for CORS.

```puppet
$azure_service_cors_configuration_method_entry = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ServiceCorsConfigurationOriginEntry

An origin for CORS.

```puppet
$azure_service_cors_configuration_origin_entry = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ServiceCosmosDbConfigurationInfo

The settings for the Cosmos DB database backing the service.

```puppet
$azure_service_cosmos_db_configuration_info = {
  offerThroughput => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|offerThroughput | Integer | false | The provisioned throughput for the backing database. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServicesDescription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HealthcareApis/services/%{resource_name}`|Put|Create or update the metadata of a service instance.|Services_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.HealthcareApis/services`|Get|Get all the service instances in a subscription.|Services_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HealthcareApis/services/%{resource_name}`|Get|Get the metadata of a service instance.|Services_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.HealthcareApis/services`|Get|Get all the service instances in a subscription.|Services_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HealthcareApis/services/%{resource_name}`|Put|Create or update the metadata of a service instance.|Services_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HealthcareApis/services/%{resource_name}`|Delete|Delete a service instance.|Services_Delete|
