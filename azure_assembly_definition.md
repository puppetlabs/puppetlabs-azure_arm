Document: "logic"


Path: "/tmp/azure-rest-api-specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## AssemblyDefinition

The assembly definition.

```puppet
azure_assembly_definition {
  api_version => "api_version",
  assembly_artifact => "assemblyArtifact",
  assembly_artifact_name => "assembly_artifact_name",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  properties => $azure_assembly_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|assembly_artifact | Hash | true | The assembly artifact. |
|assembly_artifact_name | String | true | The assembly artifact name. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|properties | [AssemblyProperties](#assemblyproperties) | true | The assembly properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
        
## AssemblyProperties

The assembly properties definition.

```puppet
$azure_assembly_properties = {
  assemblyCulture => "assemblyCulture (optional)",
  assemblyName => "assemblyName",
  assemblyPublicKeyToken => "assemblyPublicKeyToken (optional)",
  assemblyVersion => "assemblyVersion (optional)",
  changedTime => "changedTime (optional)",
  content => "content (optional)",
  contentLink => "contentLink (optional)",
  contentType => "contentType (optional)",
  createdTime => "createdTime (optional)",
  metadata => "metadata (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|assemblyCulture | String | false | The assembly culture. |
|assemblyName | String | true | The assembly name. |
|assemblyPublicKeyToken | String | false | The assembly public key token. |
|assemblyVersion | String | false | The assembly version. |
|changedTime | String | false | The artifact changed time. |
|content | String | false |  |
|contentLink | String | false | The content link. |
|contentType | String | false | The content type. |
|createdTime | String | false | The artifact creation time. |
|metadata | String | false |  |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AssemblyDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/assemblies/%{assembly_artifact_name}`|Put|Create or update an assembly for an integration account.|IntegrationAccountAssemblies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/assemblies/%{assembly_artifact_name}`|Get|Get an assembly for an integration account.|IntegrationAccountAssemblies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/assemblies`|Get|List the assemblies for an integration account.|IntegrationAccountAssemblies_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/assemblies/%{assembly_artifact_name}`|Put|Create or update an assembly for an integration account.|IntegrationAccountAssemblies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/assemblies/%{assembly_artifact_name}`|Delete|Delete an assembly for an integration account.|IntegrationAccountAssemblies_Delete|
