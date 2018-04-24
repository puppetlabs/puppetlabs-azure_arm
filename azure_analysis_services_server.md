Document: "analysisservices"
Path: "/root/specs/specification/analysisservices/resource-manager/Microsoft.AnalysisServices/stable/2017-08-01/analysisservices.json")

## AnalysisServicesServer

```puppet
azure_analysis_services_server {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_analysis_services_server_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  server_parameters => "serverParameters",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|id | String | false | An identifier that represents the Analysis Services resource. |
|location | String | false | Location of the Analysis Services resource. |
|name | String | false | The name of the Analysis Services resource. |
|properties | [AnalysisServicesServerProperties](#analysisservicesserverproperties) | false | Properties of the provision operation request. |
|resource_group_name | String | true | The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90. |
|server_name | String | true | The name of the Analysis Services server. It must be a minimum of 3 characters, and a maximum of 63. |
|server_parameters | Hash | true | Contains the information used to provision the Analysis Services server. |
|sku | String | false | The SKU of the Analysis Services resource. |
|subscription_id | String | true | A unique identifier for a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Key-value pairs of additional resource provisioning properties. |
|type | String | false | The type of the Analysis Services resource. |
        
## AnalysisServicesServerProperties

```puppet
$azure_analysis_services_server_properties = {
  asAdministrators => "asAdministrators (optional)",
  backupBlobContainerUri => "backupBlobContainerUri (optional)",
  gatewayDetails => "gatewayDetails (optional)",
  ipV4FirewallSettings => "ipV4FirewallSettings (optional)",
  provisioningState => "provisioningState (optional)",
  querypoolConnectionMode => "querypoolConnectionMode (optional)",
  serverFullName => "serverFullName (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|asAdministrators | String | false | A collection of AS server administrators |
|backupBlobContainerUri | String | false | The SAS container URI to the backup container. |
|gatewayDetails | String | false | The gateway details configured for the AS server. |
|ipV4FirewallSettings | String | false | The firewall settings for the AS server. |
|provisioningState | String | false | The current deployment state of Analysis Services resource. The provisioningState is to indicate states for resource provisioning. |
|querypoolConnectionMode | String | false | How the read-write server's participation in the query pool is controlled.<br/>It can have the following values: <ul><li>readOnly - indicates that the read-write server is intended not to participate in query operations</li><li>all - indicates that the read-write server can participate in query operations</li></ul>Specifying readOnly when capacity is 1 results in error. |
|serverFullName | String | false | The full name of the Analysis Services resource. |
|state | String | false | The current state of Analysis Services resource. The state is to indicate more states outside of resource provisioning. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AnalysisServicesServer

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AnalysisServices/servers/%{server_name}`|Put|Provisions the specified Analysis Services server based on the configuration specified in the request.|Servers_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.AnalysisServices/servers`|Get|Lists all the Analysis Services servers for the given subscription.|Servers_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AnalysisServices/servers/%{server_name}`|Get|Gets details about the specified Analysis Services server.|Servers_GetDetails|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.AnalysisServices/servers`|Get|Lists all the Analysis Services servers for the given subscription.|Servers_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AnalysisServices/servers/%{server_name}`|Put|Provisions the specified Analysis Services server based on the configuration specified in the request.|Servers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AnalysisServices/servers/%{server_name}`|Delete|Deletes the specified Analysis Services server.|Servers_Delete|