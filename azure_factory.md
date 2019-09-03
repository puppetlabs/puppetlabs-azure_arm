Document: "datafactory"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/datafactory/resource-manager/Microsoft.DataFactory/stable/2018-06-01/datafactory.json")

## Factory

Factory resource type.

```puppet
azure_factory {
  api_version => "api_version",
  factory => "factory",
  identity => $azure_factory_identity
  location => "location (optional)",
  properties => $azure_factory_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|factory | Hash | true | Factory resource definition. |
|identity | [FactoryIdentity](#factoryidentity) | false | Managed service identity of the factory. |
|location | String | false | The resource location. |
|properties | [FactoryProperties](#factoryproperties) | false | Properties of the factory. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription identifier. |
|tags | Hash | false | The resource tags. |
        
## FactoryIdentity

Identity properties of the factory resource.

```puppet
$azure_factory_identity = {
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | true | The identity type. Currently the only supported type is 'SystemAssigned'. |
        
## FactoryProperties

Factory resource properties.

```puppet
$azure_factory_properties = {
  repoConfiguration => $azure_factory_repo_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|repoConfiguration | [FactoryRepoConfiguration](#factoryrepoconfiguration) | false | Git repo information of the factory. |
        
## FactoryRepoConfiguration

Factory's git repo information.

```puppet
$azure_factory_repo_configuration = {
  accountName => "accountName",
  collaborationBranch => "collaborationBranch",
  lastCommitId => "lastCommitId (optional)",
  repositoryName => "repositoryName",
  rootFolder => "rootFolder",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountName | String | true | Account name. |
|collaborationBranch | String | true | Collaboration branch. |
|lastCommitId | String | false | Last commit id. |
|repositoryName | String | true | Repository name. |
|rootFolder | String | true | Root folder. |
|type | String | true | Type of repo configuration. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Factory

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}`|Put|Creates or updates a factory.|Factories_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DataFactory/factories`|Get|Lists factories under the specified subscription.|Factories_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}`|Get|Gets a factory.|Factories_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories`|Get|Lists factories.|Factories_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}`|Put|Creates or updates a factory.|Factories_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}`|Delete|Deletes a factory.|Factories_Delete|
