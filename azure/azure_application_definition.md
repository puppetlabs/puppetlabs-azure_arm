Document: "managedapplications"
Path: "/root/specs/specification/resources/resource-manager/Microsoft.Solutions/stable/2017-09-01/managedapplications.json")

## ApplicationDefinition

```puppet
azure_application_definition {
  api_version => "api_version",
  id => "id (optional)",
  identity => "identity (optional)",
  location => "location (optional)",
  managed_by => "managed_by (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_application_definition_properties
  sku => "sku (optional)",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|id | String | false | Resource ID |
|identity | String | false | The identity of the resource. |
|location | String | false | Resource location |
|managed_by | String | false | ID of the resource that manages this resource. |
|name | String | false | Resource name |
|parameters | Hash | true | Parameters supplied to the create or update a managed application definition. |
|properties | [ApplicationDefinitionProperties](#applicationdefinitionproperties) | true | The managed application definition properties. |
|sku | String | false | The SKU of the resource. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## ApplicationDefinitionProperties

```puppet
$azure_application_definition_properties = {
  artifacts => $azure_application_artifact
  authorizations => $azure_application_provider_authorization
  createUiDefinition => "createUiDefinition (optional)",
  description => "description (optional)",
  displayName => "displayName (optional)",
  isEnabled => "isEnabled (optional)",
  lockLevel => $azure_application_lock_level
  mainTemplate => "mainTemplate (optional)",
  packageFileUri => "packageFileUri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|artifacts | [ApplicationArtifact](#applicationartifact) | false | The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition. |
|authorizations | [ApplicationProviderAuthorization](#applicationproviderauthorization) | true | The managed application provider authorizations. |
|createUiDefinition | Hash | false | The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string. |
|description | String | false | The managed application definition description. |
|displayName | String | false | The managed application definition display name. |
|isEnabled | String | false | A value indicating whether the package is enabled or not. |
|lockLevel | [ApplicationLockLevel](#applicationlocklevel) | true | The managed application lock level. |
|mainTemplate | Hash | false | The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string. |
|packageFileUri | String | false | The managed application definition package file Uri. Use this element |
        
## ApplicationArtifact

```puppet
$azure_application_artifact = {
  name => "name (optional)",
  type => $azure_application_artifact_type
  uri => "uri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The managed application artifact name. |
|type | [ApplicationArtifactType](#applicationartifacttype) | false | The managed application artifact type. |
|uri | String | false | The managed application artifact blob uri. |
        
## ApplicationArtifactType

```puppet
$azure_application_artifact_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ApplicationProviderAuthorization

```puppet
$azure_application_provider_authorization = {
  principalId => "principalId",
  roleDefinitionId => "roleDefinitionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|principalId | String | true | The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the managed application resources. |
|roleDefinitionId | String | true | The provider's role definition identifier. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group. |
        
## ApplicationLockLevel

```puppet
$azure_application_lock_level = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{application_definition_id}`|Put|Creates a new managed application definition.|ApplicationDefinitions_CreateOrUpdateById|
|List - list all|``||||
|List - get one|`/%{application_definition_id}`|Get|Gets the managed application definition.|ApplicationDefinitions_GetById|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applicationDefinitions`|Get|Lists the managed application definitions in a resource group.|ApplicationDefinitions_ListByResourceGroup|
|Update|`/%{application_definition_id}`|Put|Creates a new managed application definition.|ApplicationDefinitions_CreateOrUpdateById|
|Delete|`/%{application_definition_id}`|Delete|Deletes the managed application definition.|ApplicationDefinitions_DeleteById|