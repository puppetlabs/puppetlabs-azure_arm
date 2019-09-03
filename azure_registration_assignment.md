Document: "managedservices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/managedservices/resource-manager/Microsoft.ManagedServices/stable/2019-06-01/managedservices.json")

## RegistrationAssignment

Registration assignment.

```puppet
azure_registration_assignment {
  api_version => "api_version",
  properties => $azure_registration_assignment_properties
  request_body => "requestBody",
  scope => "scope",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|properties | [RegistrationAssignmentProperties](#registrationassignmentproperties) | false | Properties of a registration assignment. |
|request_body | Hash | true | The parameters required to create new registration assignment. |
|scope | String | true | Scope of the resource. |
        
## RegistrationAssignmentProperties

Properties of a registration assignment.

```puppet
$azure_registration_assignment_properties = {
  registrationDefinitionId => "registrationDefinitionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|registrationDefinitionId | String | true | Fully qualified path of the registration definition. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RegistrationAssignment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.ManagedServices/registrationAssignments/%{registration_assignment_id}`|Put|Creates or updates a registration assignment.|RegistrationAssignments_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/%{scope}/providers/Microsoft.ManagedServices/registrationAssignments/%{registration_assignment_id}`|Get|Gets the details of specified registration assignment.|RegistrationAssignments_Get|
|List - get list using params|`/%{scope}/providers/Microsoft.ManagedServices/registrationAssignments`|Get|Gets a list of the registration assignments.|RegistrationAssignments_List|
|Update|`/%{scope}/providers/Microsoft.ManagedServices/registrationAssignments/%{registration_assignment_id}`|Put|Creates or updates a registration assignment.|RegistrationAssignments_CreateOrUpdate|
|Delete|`/%{scope}/providers/Microsoft.ManagedServices/registrationAssignments/%{registration_assignment_id}`|Delete|Deletes the specified registration assignment.|RegistrationAssignments_Delete|
