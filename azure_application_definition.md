Document: "managedapplications"


Path: "/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Solutions/stable/2018-06-01/managedapplications.json")

## ApplicationDefinition

Information about managed application definition.

```puppet
azure_application_definition {
  api_version => "api_version",
  identity => "identity (optional)",
  location => "location (optional)",
  managed_by => "managed_by (optional)",
  parameters => "parameters",
  properties => $azure_application_definition_properties
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|identity | String | false | The identity of the resource. |
|location | String | false | Resource location |
|managed_by | String | false | ID of the resource that manages this resource. |
|parameters | Hash | true | Parameters supplied to the create or update an managed application definition. |
|properties | [ApplicationDefinitionProperties](#applicationdefinitionproperties) | true | The managed application definition properties. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|sku | String | false | The SKU of the resource. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | Resource tags |
        
## ApplicationDefinitionProperties

The managed application definition properties.

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

Managed application artifact.

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

The managed application artifact type.

```puppet
$azure_application_artifact_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ApplicationProviderAuthorization

The managed application provider authorization.

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

The managed application lock level.

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
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applicationDefinitions/%{application_definition_name}`|Put|Creates a new managed application definition.|ApplicationDefinitions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applicationDefinitions/%{application_definition_name}`|Get|Gets the managed application definition.|ApplicationDefinitions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applicationDefinitions`|Get|Lists the managed application definitions in a resource group.|ApplicationDefinitions_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applicationDefinitions/%{application_definition_name}`|Put|Creates a new managed application definition.|ApplicationDefinitions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applicationDefinitions/%{application_definition_name}`|Delete|Deletes the managed application definition.|ApplicationDefinitions_Delete|
