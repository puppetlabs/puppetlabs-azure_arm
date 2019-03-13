Document: "Registration"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/azurestack/resource-manager/Microsoft.AzureStack/stable/2017-06-01/Registration.json")

## Registration

Registration information.

```puppet
azure_registration {
  api_version => "api_version",
  etag => "etag (optional)",
  location => "location (optional)",
  properties => $azure_registration_properties
  resource_group => "resource_group",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  token => "token",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API Version. |
|etag | String | false | The entity tag used for optimistic concurrency when modifying the resource. |
|location | String | false | Location of the resource. |
|properties | [RegistrationProperties](#registrationproperties) | false | Registration resource. |
|resource_group | String | true | Name of the resource group. |
|subscription_id | String | true | Subscription credentials that uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Custom tags for the resource. |
|token | Hash | true | Registration token |
        
## RegistrationProperties

Properties portion of the registration resource.

```puppet
$azure_registration_properties = {
  billingModel => "billingModel (optional)",
  cloudId => "cloudId (optional)",
  objectId => "objectId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|billingModel | String | false | Specifies the billing mode for the Azure Stack registration. |
|cloudId | String | false | The identifier of the registered Azure Stack. |
|objectId | String | false | The object identifier associated with the Azure Stack connecting to Azure. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Registration

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}`|Put|Create or update an Azure Stack registration.|Registrations_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}`|Get|Returns the properties of an Azure Stack registration.|Registrations_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations`|Get|Returns a list of all registrations.|Registrations_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}`|Put|Create or update an Azure Stack registration.|Registrations_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}`|Delete|Delete the requested Azure Stack registration.|Registrations_Delete|
