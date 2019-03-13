Document: "serverCommunicationLinks"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/serverCommunicationLinks.json")

## ServerCommunicationLink

Server communication link.

```puppet
azure_server_communication_link {
  api_version => "api_version",
  communication_link_name => "communication_link_name",
  parameters => "parameters",
  properties => $azure_server_communication_link_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|communication_link_name | String | true | The name of the server communication link. |
|parameters | Hash | true | The required parameters for creating a server communication link. |
|properties | [ServerCommunicationLinkProperties](#servercommunicationlinkproperties) | false | The properties of resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
        
## ServerCommunicationLinkProperties

The properties of a server communication link.

```puppet
$azure_server_communication_link_properties = {
  partnerServer => "partnerServer",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|partnerServer | String | true | The name of the partner server. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServerCommunicationLink

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/communicationLinks/%{communication_link_name}`|Put|Creates a server communication link.|ServerCommunicationLinks_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/communicationLinks/%{communication_link_name}`|Get|Returns a server communication link.|ServerCommunicationLinks_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/communicationLinks`|Get|Gets a list of server communication links.|ServerCommunicationLinks_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/communicationLinks/%{communication_link_name}`|Put|Creates a server communication link.|ServerCommunicationLinks_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/communicationLinks/%{communication_link_name}`|Delete|Deletes a server communication link.|ServerCommunicationLinks_Delete|
