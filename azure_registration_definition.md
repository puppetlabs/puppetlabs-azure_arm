Document: "managedservices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/managedservices/resource-manager/Microsoft.ManagedServices/stable/2019-06-01/managedservices.json")

## RegistrationDefinition

Registration definition.

```puppet
azure_registration_definition {
  api_version => "api_version",
  plan => $azure_plan
  properties => $azure_registration_definition_properties
  request_body => "requestBody",
  scope => "scope",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|plan | [Plan](#plan) | false | Plan details for the managed services. |
|properties | [RegistrationDefinitionProperties](#registrationdefinitionproperties) | false | Properties of a registration definition. |
|request_body | Hash | true | The parameters required to create new registration definition. |
|scope | String | true | Scope of the resource. |
        
## Plan

Plan details for the managed services.

```puppet
$azure_plan = {
  name => "name",
  product => "product",
  publisher => "publisher",
  version => "version",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The plan name. |
|product | String | true | The product code. |
|publisher | String | true | The publisher ID. |
|version | String | true | The plan's version. |
        
## RegistrationDefinitionProperties

Properties of a registration definition.

```puppet
$azure_registration_definition_properties = {
  authorizations => $azure_authorization
  description => "description (optional)",
  managedByTenantId => "managedByTenantId",
  registrationDefinitionName => "registrationDefinitionName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizations | [Authorization](#authorization) | true | Authorization tuple containing principal id of the user/security group or service principal and id of the build-in role. |
|description | String | false | Description of the registration definition. |
|managedByTenantId | String | true | Id of the managedBy tenant. |
|registrationDefinitionName | String | false | Name of the registration definition. |
        
## Authorization

Authorization tuple containing principal Id (of user/service principal/security group) and role definition id.

```puppet
$azure_authorization = {
  principalId => "principalId",
  roleDefinitionId => "roleDefinitionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|principalId | String | true | Principal Id of the security group/service principal/user that would be assigned permissions to the projected subscription |
|roleDefinitionId | String | true | The role definition identifier. This role will define all the permissions that the security group/service principal/user must have on the projected subscription. This role cannot be an owner role. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RegistrationDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.ManagedServices/registrationDefinitions/%{registration_definition_id}`|Put|Creates or updates a registration definition.|RegistrationDefinitions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/%{scope}/providers/Microsoft.ManagedServices/registrationDefinitions/%{registration_definition_id}`|Get|Gets the registration definition details.|RegistrationDefinitions_Get|
|List - get list using params|`/%{scope}/providers/Microsoft.ManagedServices/registrationDefinitions`|Get|Gets a list of the registration definitions.|RegistrationDefinitions_List|
|Update|`/%{scope}/providers/Microsoft.ManagedServices/registrationDefinitions/%{registration_definition_id}`|Put|Creates or updates a registration definition.|RegistrationDefinitions_CreateOrUpdate|
|Delete|`/%{scope}/providers/Microsoft.ManagedServices/registrationDefinitions/%{registration_definition_id}`|Delete|Deletes the registration definition.|RegistrationDefinitions_Delete|
