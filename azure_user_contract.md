Document: "apimusers"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimusers.json")

## UserContract

User details.

```puppet
azure_user_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_user_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  uid => "uid",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | The entity state (Etag) version of the user to delete. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|parameters | Hash | true | Create or update parameters. |
|properties | [UserContractProperties](#usercontractproperties) | false | User entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|uid | String | true | User identifier. Must be unique in the current API Management service instance. |
        
## UserContractProperties

User profile.

```puppet
$azure_user_contract_properties = {
  email => "email (optional)",
  firstName => "firstName (optional)",
  groups => $azure_group_contract
  lastName => "lastName (optional)",
  note => "note (optional)",
  registrationDate => "registrationDate (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|email | String | false | Email address. |
|firstName | String | false | First name. |
|groups | [GroupContract](#groupcontract) | false | Collection of groups user is part of. |
|lastName | String | false | Last name. |
|note | String | false | Optional note about a user set by the administrator. |
|registrationDate | String | false | Date of user registration. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
 |
|state | String | false | Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active. |
        
## GroupContract

Contract details.

```puppet
$azure_group_contract = {
  properties => $azure_group_contract_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [GroupContractProperties](#groupcontractproperties) | false | Group entity contract properties. |
        
## GroupContractProperties

Group contract Properties.

```puppet
$azure_group_contract_properties = {
  description => "description (optional)",
  displayName => "displayName",
  externalId => "externalId (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Group description. Can contain HTML formatting tags. |
|displayName | String | true | Group name. |
|externalId | String | false | For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory aad://<tenant>.onmicrosoft.com/groups/<group object id>; otherwise the value is null. |
|type | String | false | Group type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the UserContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/users/%{uid}`|Put|Creates or Updates a user.|User_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/users/%{uid}`|Get|Gets the details of the user specified by its identifier.|User_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/users`|Get|Lists a collection of registered users in the specified service instance.|User_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/users/%{uid}`|Put|Creates or Updates a user.|User_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/users/%{uid}`|Delete|Deletes specific user.|User_Delete|
