Document: "hybriddata"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/hybriddatamanager/resource-manager/Microsoft.HybridData/stable/2016-06-01/hybriddata.json")

## JobDefinition

Job Definition.

```puppet
azure_job_definition {
  api_version => "api_version",
  data_manager_name => "data_manager_name",
  data_service_name => "data_service_name",
  job_definition => "jobDefinition",
  properties => $azure_job_definition_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API Version |
|data_manager_name | String | true | The name of the DataManager Resource within the specified resource group. DataManager names must be between 3 and 24 characters in length and use any alphanumeric and underscore only |
|data_service_name | String | true | The data service type of the job definition. |
|job_definition | Hash | true | Job Definition object to be created or updated. |
|properties | [JobDefinitionProperties](#jobdefinitionproperties) | true | JobDefinition properties. |
|resource_group_name | String | true | The Resource Group Name |
|subscription_id | String | true | The Subscription Id |
        
## JobDefinitionProperties

Job Definition

```puppet
$azure_job_definition_properties = {
  customerSecrets => $azure_customer_secret
  dataServiceInput => "dataServiceInput (optional)",
  dataSinkId => "dataSinkId",
  dataSourceId => "dataSourceId",
  lastModifiedTime => "lastModifiedTime (optional)",
  runLocation => "runLocation (optional)",
  schedules => $azure_schedule
  state => "state",
  userConfirmation => "userConfirmation (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customerSecrets | [CustomerSecret](#customersecret) | false | List of customer secrets containing a key identifier and key value. The key identifier is a way for the specific data source to understand the key. Value contains customer secret encrypted by the encryptionKeys. |
|dataServiceInput | Hash | false | A generic json used differently by each data service type. |
|dataSinkId | String | true | Data Sink Id associated to the job definition. |
|dataSourceId | String | true | Data Source Id associated to the job definition. |
|lastModifiedTime | String | false | Last modified time of the job definition. |
|runLocation | String | false | This is the preferred geo location for the job to run. |
|schedules | [Schedule](#schedule) | false | Schedule for running the job definition |
|state | String | true | State of the job definition. |
|userConfirmation | String | false | Enum to detect if user confirmation is required. If not passed will default to NotRequired. |
        
## CustomerSecret

The pair of customer secret.

```puppet
$azure_customer_secret = {
  algorithm => "algorithm",
  keyIdentifier => "keyIdentifier",
  keyValue => "keyValue",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|algorithm | String | true | The encryption algorithm used to encrypt data. |
|keyIdentifier | String | true | The identifier to the data service input object which this secret corresponds to. |
|keyValue | String | true | It contains the encrypted customer secret. |
        
## Schedule

Schedule for the job run.

```puppet
$azure_schedule = {
  name => "name (optional)",
  policyList => "policyList (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of the schedule. |
|policyList | Array | false | A list of repetition intervals in ISO 8601 format. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the JobDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataServices/%{data_service_name}/jobDefinitions/%{job_definition_name}`|Put|Creates or updates a job definition.|JobDefinitions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataServices/%{data_service_name}/jobDefinitions/%{job_definition_name}`|Get|This method gets job definition object by name.|JobDefinitions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataServices/%{data_service_name}/jobDefinitions`|Get|This method gets all the job definitions of the given data service name.|JobDefinitions_ListByDataService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataServices/%{data_service_name}/jobDefinitions/%{job_definition_name}`|Put|Creates or updates a job definition.|JobDefinitions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataServices/%{data_service_name}/jobDefinitions/%{job_definition_name}`|Delete|This method deletes the given job definition.|JobDefinitions_Delete|
