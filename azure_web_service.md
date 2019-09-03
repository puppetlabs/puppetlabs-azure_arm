Document: "webservices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2017-01-01/webservices.json")

## WebService

Instance of an Azure ML web service resource.

```puppet
azure_web_service {
  api_version => "api_version",
  create_or_update_payload => "createOrUpdatePayload",
  location => "location (optional)",
  properties => $azure_web_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the Microsoft.MachineLearning resource provider API to use. |
|create_or_update_payload | Hash | true | The payload that is used to create or update the web service. |
|location | String | false | Specifies the location of the resource. |
|properties | [WebServiceProperties](#webserviceproperties) | true | Contains the property payload that describes the web service. |
|resource_group_name | String | true | Name of the resource group in which the web service is located. |
|subscription_id | String | true | The Azure subscription ID. |
|tags | Hash | false | Contains resource tags defined as key/value pairs. |
        
## WebServiceProperties

The set of properties specific to the Azure ML web service resource.

```puppet
$azure_web_service_properties = {
  assets => "assets (optional)",
  commitmentPlan => $azure_commitment_plan
  description => "description (optional)",
  diagnostics => $azure_diagnostics_configuration
  exampleRequest => $azure_example_request
  exposeSampleData => "exposeSampleData (optional)",
  input => $azure_service_input_output_specification
  keys => $azure_web_service_keys
  machineLearningWorkspace => $azure_machine_learning_workspace
  output => $azure_service_input_output_specification
  packageType => "packageType",
  parameters => "parameters (optional)",
  payloadsInBlobStorage => "payloadsInBlobStorage (optional)",
  payloadsLocation => $azure_blob_location
  readOnly => "readOnly (optional)",
  realtimeConfiguration => $azure_realtime_configuration
  storageAccount => $azure_storage_account
  title => "title (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|assets | Hash | false | Contains user defined properties describing web service assets. Properties are expressed as Key/Value pairs. |
|commitmentPlan | [CommitmentPlan](#commitmentplan) | false | Contains the commitment plan associated with this web service. Set at creation time. Once set, this value cannot be changed. Note: The commitment plan is not returned from calls to GET operations. |
|description | String | false | The description of the web service. |
|diagnostics | [DiagnosticsConfiguration](#diagnosticsconfiguration) | false | Settings controlling the diagnostics traces collection for the web service. |
|exampleRequest | [ExampleRequest](#examplerequest) | false | Defines sample input data for one or more of the service's inputs. |
|exposeSampleData | Boolean | false | When set to true, sample data is included in the web service's swagger definition. The default value is true. |
|input | [ServiceInputOutputSpecification](#serviceinputoutputspecification) | false | Contains the Swagger 2.0 schema describing one or more of the web service's inputs. For more information, see the Swagger specification. |
|keys | [WebServiceKeys](#webservicekeys) | false | Contains the web service provisioning keys. If you do not specify provisioning keys, the Azure Machine Learning system generates them for you. Note: The keys are not returned from calls to GET operations. |
|machineLearningWorkspace | [MachineLearningWorkspace](#machinelearningworkspace) | false | Specifies the Machine Learning workspace containing the experiment that is source for the web service. |
|output | [ServiceInputOutputSpecification](#serviceinputoutputspecification) | false | Contains the Swagger 2.0 schema describing one or more of the web service's outputs. For more information, see the Swagger specification. |
|packageType | String | true | Specifies the package type. Valid values are Graph (Specifies a web service published through the Machine Learning Studio) and Code (Specifies a web service published using code such as Python). Note: Code is not supported at this time. |
|parameters | Hash | false | The set of global parameters values defined for the web service, given as a global parameter name to default value map. If no default value is specified, the parameter is considered to be required. |
|payloadsInBlobStorage | Boolean | false | When set to true, indicates that the payload size is larger than 3 MB. Otherwise false. If the payload size exceed 3 MB, the payload is stored in a blob and the PayloadsLocation parameter contains the URI of the blob. Otherwise, this will be set to false and Assets, Input, Output, Package, Parameters, ExampleRequest are inline. The Payload sizes is determined by adding the size of the Assets, Input, Output, Package, Parameters, and the ExampleRequest. |
|payloadsLocation | [BlobLocation](#bloblocation) | false | The URI of the payload blob. This parameter contains a value only if the payloadsInBlobStorage parameter is set to true. Otherwise is set to null. |
|readOnly | Boolean | false | When set to true, indicates that the web service is read-only and can no longer be updated or patched, only removed. Default, is false. Note: Once set to true, you cannot change its value. |
|realtimeConfiguration | [RealtimeConfiguration](#realtimeconfiguration) | false | Contains the configuration settings for the web service endpoint. |
|storageAccount | [StorageAccount](#storageaccount) | false | Specifies the storage account that Azure Machine Learning uses to store information about the web service. Only the name of the storage account is returned from calls to GET operations. When updating the storage account information, you must ensure that all necessary assets are available in the new storage account or calls to your web service will fail. |
|title | String | false | The title of the web service. |
        
## CommitmentPlan

Information about the machine learning commitment plan associated with the web service.

```puppet
$azure_commitment_plan = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | Specifies the Azure Resource Manager ID of the commitment plan associated with the web service. |
        
## DiagnosticsConfiguration

Diagnostics settings for an Azure ML web service.

```puppet
$azure_diagnostics_configuration = {
  expiry => "expiry (optional)",
  level => "level",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|expiry | String | false | Specifies the date and time when the logging will cease. If null, diagnostic collection is not time limited. |
|level | String | true | Specifies the verbosity of the diagnostic output. Valid values are: None - disables tracing; Error - collects only error (stderr) traces; All - collects all traces (stdout and stderr). |
        
## ExampleRequest

Sample input data for the service's input(s).

```puppet
$azure_example_request = {
  globalParameters => "globalParameters (optional)",
  inputs => "inputs (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|globalParameters | Hash | false | Sample input data for the web service's global parameters |
|inputs | Hash | false | Sample input data for the web service's input(s) given as an input name to sample input values matrix map. |
        
## ServiceInputOutputSpecification

The swagger 2.0 schema describing the service's inputs or outputs. See Swagger specification: http://swagger.io/specification/

```puppet
$azure_service_input_output_specification = {
  description => "description (optional)",
  properties => "properties",
  title => "title (optional)",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The description of the Swagger schema. |
|properties | Hash | true | Specifies a collection that contains the column schema for each input or output of the web service. For more information, see the Swagger specification. |
|title | String | false | The title of your Swagger schema. |
|type | String | true | The type of the entity described in swagger. Always 'object'. |
        
## WebServiceKeys

Access keys for the web service calls.

```puppet
$azure_web_service_keys = {
  primary => "primary (optional)",
  secondary => "secondary (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|primary | String | false | The primary access key. |
|secondary | String | false | The secondary access key. |
        
## MachineLearningWorkspace

Information about the machine learning workspace containing the experiment that is source for the web service.

```puppet
$azure_machine_learning_workspace = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | Specifies the workspace ID of the machine learning workspace associated with the web service |
        
        
## BlobLocation

Describes the access location for a blob.

```puppet
$azure_blob_location = {
  credentials => "credentials (optional)",
  uri => "uri",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|credentials | String | false | Access credentials for the blob, if applicable (e.g. blob specified by storage account connection string + blob URI) |
|uri | String | true | The URI from which the blob is accessible from. For example, aml://abc for system assets or https://xyz for user assets or payload. |
        
## RealtimeConfiguration

Holds the available configuration options for an Azure ML web service endpoint.

```puppet
$azure_realtime_configuration = {
  maxConcurrentCalls => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|maxConcurrentCalls | Integer | false | Specifies the maximum concurrent calls that can be made to the web service. Minimum value: 4, Maximum value: 200. |
        
## StorageAccount

Access information for a storage account.

```puppet
$azure_storage_account = {
  key => "key (optional)",
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|key | String | false | Specifies the key used to access the storage account. |
|name | String | false | Specifies the name of the storage account. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the WebService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/webServices/%{web_service_name}`|Put|Create or update a web service. This call will overwrite an existing web service. Note that there is no warning or confirmation. This is a nonrecoverable operation. If your intent is to create a new web service, call the Get operation first to verify that it does not exist.|WebServices_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.MachineLearning/webServices`|Get|Gets the web services in the specified subscription.|WebServices_ListBySubscriptionId|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/webServices/%{web_service_name}`|Get|Gets the Web Service Definition as specified by a subscription, resource group, and name. Note that the storage credentials and web service keys are not returned by this call. To get the web service access keys, call List Keys.|WebServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/webServices`|Get|Gets the web services in the specified resource group.|WebServices_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/webServices/%{web_service_name}`|Put|Create or update a web service. This call will overwrite an existing web service. Note that there is no warning or confirmation. This is a nonrecoverable operation. If your intent is to create a new web service, call the Get operation first to verify that it does not exist.|WebServices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/webServices/%{web_service_name}`|Delete|Deletes the specified web service.|WebServices_Remove|
