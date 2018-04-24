Document: "dscNodeConfiguration"
Path: "/root/specs/specification/automation/resource-manager/Microsoft.Automation/stable/2018-01-15/dscNodeConfiguration.json")

## DscNodeConfiguration

```puppet
azure_dsc_node_configuration {
  api_version => "api_version",
  automation_account_name => "automation_account_name",
  id => "id (optional)",
  name => "name (optional)",
  node_configuration_name => "node_configuration_name",
  parameters => "parameters",
  properties => $azure_dsc_node_configuration_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|automation_account_name | String | true | The name of the automation account. |
|id | String | false | Fully qualified resource Id for the resource |
|name | String | false | The name of the resource |
|node_configuration_name | String | true | The Dsc node configuration name. |
|parameters | Hash | true | The create or update parameters for configuration. |
|properties | [DscNodeConfigurationProperties](#dscnodeconfigurationproperties) | false | Gets or sets the configuration properties. |
|resource_group_name | String | true | Name of an Azure Resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | The type of the resource. |
        
## DscNodeConfigurationProperties

```puppet
$azure_dsc_node_configuration_properties = {
  configuration => $azure_dsc_configuration_association_property
  creationTime => "creationTime (optional)",
  incrementNodeConfigurationBuild => "incrementNodeConfigurationBuild (optional)",
  lastModifiedTime => "lastModifiedTime (optional)",
  nodeCount => "1234 (optional)",
  source => "source (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|configuration | [DscConfigurationAssociationProperty](#dscconfigurationassociationproperty) | false | Gets or sets the configuration of the node. |
|creationTime | String | false | Gets or sets creation time. |
|incrementNodeConfigurationBuild | Boolean | false | If a new build version of NodeConfiguration is required. |
|lastModifiedTime | String | false | Gets or sets the last modified time. |
|nodeCount | Integer | false | Number of nodes with this nodeconfiguration assigned |
|source | String | false | Source of node configuration. |
        
## DscConfigurationAssociationProperty

```puppet
$azure_dsc_configuration_association_property = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Gets or sets the name of the Dsc configuration. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DscNodeConfiguration

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Automation/automationAccounts/%{automation_account_name}/nodeConfigurations/%{node_configuration_name}`|Put|Create the node configuration identified by node configuration name.|DscNodeConfiguration_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Automation/automationAccounts/%{automation_account_name}/nodeConfigurations/%{node_configuration_name}`|Get|Retrieve the Dsc node configurations by node configuration.|DscNodeConfiguration_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Automation/automationAccounts/%{automation_account_name}/nodeConfigurations`|Get|Retrieve a list of dsc node configurations.|DscNodeConfiguration_ListByAutomationAccount|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Automation/automationAccounts/%{automation_account_name}/nodeConfigurations/%{node_configuration_name}`|Put|Create the node configuration identified by node configuration name.|DscNodeConfiguration_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Automation/automationAccounts/%{automation_account_name}/nodeConfigurations/%{node_configuration_name}`|Delete|Delete the Dsc node configurations by node configuration.|DscNodeConfiguration_Delete|