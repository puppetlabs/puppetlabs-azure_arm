Document: "application"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/servicefabric/resource-manager/Microsoft.ServiceFabric/stable/2019-03-01/application.json")

## ApplicationTypeResource

The application type name resource

```puppet
azure_application_type_resource {
  api_version => "api_version",
  application_type_name => "application_type_name",
  cluster_name => "cluster_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_application_type_resource_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the Service Fabric resource provider API. This is a required parameter and it's value must be '2019-03-01' for this specification. |
|application_type_name | String | true | The name of the application type name resource. |
|cluster_name | String | true | The name of the cluster resource. |
|location | String | false | It will be deprecated in New API, resource location depends on the parent resource. |
|parameters | Hash | true | The application type name resource. |
|properties | [ApplicationTypeResourceProperties](#applicationtyperesourceproperties) | false | The application type name properties |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The customer subscription identifier. |
|tags | Hash | false | Azure resource tags. |
        
## ApplicationTypeResourceProperties

The application type name properties

```puppet
$azure_application_type_resource_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationTypeResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}/applicationTypes/%{application_type_name}`|Put|Create or update a Service Fabric application type name resource with the specified name.|ApplicationTypes_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}/applicationTypes/%{application_type_name}`|Get|Get a Service Fabric application type name resource created or in the process of being created in the Service Fabric cluster resource.|ApplicationTypes_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}/applicationTypes`|Get|Gets all application type name resources created or in the process of being created in the Service Fabric cluster resource.|ApplicationTypes_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}/applicationTypes/%{application_type_name}`|Put|Create or update a Service Fabric application type name resource with the specified name.|ApplicationTypes_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}/applicationTypes/%{application_type_name}`|Delete|Delete a Service Fabric application type name resource with the specified name.|ApplicationTypes_Delete|
