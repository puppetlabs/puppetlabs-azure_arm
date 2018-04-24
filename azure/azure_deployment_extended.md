Document: "resources"
Path: "/root/specs/specification/resources/resource-manager/Microsoft.Resources/stable/2018-02-01/resources.json")

## DeploymentExtended

```puppet
azure_deployment_extended {
  api_version => "api_version",
  deployment_name => "deployment_name",
  id => "id (optional)",
  name => "name",
  parameters => "parameters",
  properties => $azure_deployment_properties_extended
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|deployment_name | String | true | The name of the deployment. |
|id | String | false | The ID of the deployment. |
|name | String | true | The name of the deployment. |
|parameters | Hash | true | Additional parameters supplied to the operation. |
|properties | [DeploymentPropertiesExtended](#deploymentpropertiesextended) | false | Deployment properties. |
|resource_group_name | String | true | The name of the resource group to deploy the resources to. The name is case insensitive. The resource group must already exist. |
|subscription_id | String | true | The ID of the target subscription. |
        
## DeploymentPropertiesExtended

```puppet
$azure_deployment_properties_extended = {
  correlationId => "correlationId (optional)",
  debugSetting => $azure_debug_setting
  dependencies => $azure_dependency
  mode => "mode (optional)",
  onErrorDeployment => $azure_on_error_deployment_extended
  outputs => "outputs (optional)",
  parameters => "parameters (optional)",
  parametersLink => $azure_parameters_link
  providers => $azure_provider
  provisioningState => "provisioningState (optional)",
  template => "template (optional)",
  templateLink => $azure_template_link
  timestamp => "timestamp (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|correlationId | String | false | The correlation ID of the deployment. |
|debugSetting | [DebugSetting](#debugsetting) | false | The debug setting of the deployment. |
|dependencies | [Dependency](#dependency) | false | The list of deployment dependencies. |
|mode | String | false | The deployment mode. Possible values are Incremental and Complete. |
|onErrorDeployment | [OnErrorDeploymentExtended](#onerrordeploymentextended) | false | The deployment on error behavior. |
|outputs | Hash | false | Key/value pairs that represent deploymentoutput. |
|parameters | Hash | false | Deployment parameters. Use only one of Parameters or ParametersLink. |
|parametersLink | [ParametersLink](#parameterslink) | false | The URI referencing the parameters. Use only one of Parameters or ParametersLink. |
|providers | [Provider](#provider) | false | The list of resource providers needed for the deployment. |
|provisioningState | String | false | The state of the provisioning. |
|template | Hash | false | The template content. Use only one of Template or TemplateLink. |
|templateLink | [TemplateLink](#templatelink) | false | The URI referencing the template. Use only one of Template or TemplateLink. |
|timestamp | String | false | The timestamp of the template deployment. |
        
## DebugSetting

```puppet
$azure_debug_setting = {
  detailLevel => "detailLevel (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|detailLevel | String | false | Specifies the type of information to log for debugging. The permitted values are none, requestContent, responseContent, or both requestContent and responseContent separated by a comma. The default is none. When setting this value, carefully consider the type of information you are passing in during deployment. By logging information about the request or response, you could potentially expose sensitive data that is retrieved through the deployment operations. |
        
## Dependency

```puppet
$azure_dependency = {
  dependsOn => $azure_basic_dependency
  id => "id (optional)",
  resourceName => "resourceName (optional)",
  resourceType => "resourceType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dependsOn | [BasicDependency](#basicdependency) | false | The list of dependencies. |
|id | String | false | The ID of the dependency. |
|resourceName | String | false | The dependency resource name. |
|resourceType | String | false | The dependency resource type. |
        
## BasicDependency

```puppet
$azure_basic_dependency = {
  id => "id (optional)",
  resourceName => "resourceName (optional)",
  resourceType => "resourceType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The ID of the dependency. |
|resourceName | String | false | The dependency resource name. |
|resourceType | String | false | The dependency resource type. |
        
## OnErrorDeploymentExtended

```puppet
$azure_on_error_deployment_extended = {
  deploymentName => "deploymentName (optional)",
  provisioningState => "provisioningState (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|deploymentName | String | false | The deployment to be used on error case. |
|provisioningState | String | false | The state of the provisioning for the on error deployment. |
|type | String | false | The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment. |
        
## ParametersLink

```puppet
$azure_parameters_link = {
  contentVersion => "contentVersion (optional)",
  uri => "uri",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentVersion | String | false | If included, must match the ContentVersion in the template. |
|uri | String | true | The URI of the parameters file. |
        
## Provider

```puppet
$azure_provider = {
  id => "id (optional)",
  namespace => "namespace (optional)",
  registrationState => "registrationState (optional)",
  resourceTypes => $azure_provider_resource_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The provider ID. |
|namespace | String | false | The namespace of the resource provider. |
|registrationState | String | false | The registration state of the provider. |
|resourceTypes | [ProviderResourceType](#providerresourcetype) | false | The collection of provider resource types. |
        
## ProviderResourceType

```puppet
$azure_provider_resource_type = {
  aliases => $azure_alias_type
  apiVersions => "apiVersions (optional)",
  locations => "locations (optional)",
  properties => "properties (optional)",
  resourceType => "resourceType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aliases | [AliasType](#aliastype) | false | The aliases that are supported by this resource type. |
|apiVersions | Array | false | The API version. |
|locations | Array | false | The collection of locations where this resource type can be created. |
|properties | Hash | false | The properties. |
|resourceType | String | false | The resource type. |
        
## AliasType

```puppet
$azure_alias_type = {
  name => "name (optional)",
  paths => $azure_alias_path_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The alias name. |
|paths | [AliasPathType](#aliaspathtype) | false | The paths for an alias. |
        
## AliasPathType

```puppet
$azure_alias_path_type = {
  apiVersions => "apiVersions (optional)",
  path => "path (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiVersions | Array | false | The API versions. |
|path | String | false | The path of an alias. |
        
## TemplateLink

```puppet
$azure_template_link = {
  contentVersion => "contentVersion (optional)",
  uri => "uri",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentVersion | String | false | If included, must match the ContentVersion in the template. |
|uri | String | true | The URI of the template to deploy. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DeploymentExtended

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Resources/deployments/%{deployment_name}`|Put|You can provide the template and parameters directly in the request or link to JSON files.|Deployments_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Resources/deployments/%{deployment_name}`|Get|Gets a deployment.|Deployments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Resources/deployments/`|Get|Get all the deployments for a resource group.|Deployments_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Resources/deployments/%{deployment_name}`|Put|You can provide the template and parameters directly in the request or link to JSON files.|Deployments_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Resources/deployments/%{deployment_name}`|Delete|A template deployment that is currently running cannot be deleted. Deleting a template deployment removes the associated deployment operations. Deleting a template deployment does not affect the state of the resource group. This is an asynchronous operation that returns a status of 202 until the template deployment is successfully deleted. The Location response header contains the URI that is used to obtain the status of the process. While the process is running, a call to the URI in the Location header returns a status of 202. When the process finishes, the URI in the Location header returns a status of 204 on success. If the asynchronous request failed, the URI in the Location header returns an error-level status code.|Deployments_Delete|