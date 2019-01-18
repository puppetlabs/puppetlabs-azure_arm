Document: "databox"


Path: "/tmp/azure-rest-api-specs/specification/databox/resource-manager/Microsoft.DataBox/stable/2018-01-01/databox.json")

## JobResource

Job Resource.

```puppet
azure_job_resource {
  api_version => "api_version",
  job_name => "job_name",
  job_resource => "jobResource",
  location => "location (optional)",
  properties => $azure_job_properties
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API Version |
|job_name | String | true | The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only |
|job_resource | Hash | true | Job details from request body. |
|location | String | false | The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed. |
|properties | [JobProperties](#jobproperties) | true | Properties of a job. |
|resource_group_name | String | true | The Resource Group Name |
|sku | String | false | The sku type. |
|subscription_id | String | true | The Subscription Id |
|tags | Hash | false | The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). |
        
## JobProperties

Job Properties

```puppet
$azure_job_properties = {
  details => $azure_job_details
  error => $azure_error
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|details | [JobDetails](#jobdetails) | false | Details of a job run. This field will only be sent for expand details filter. |
|error | [Error](#error) | false | Top level error for the job. |
        
## JobDetails

Job details.

```puppet
$azure_job_details = {
  contactDetails => $azure_contact_details
  copyLogDetails => $azure_copy_log_details
  deliveryPackage => $azure_package_shipping_details
  destinationAccountDetails => $azure_destination_account_details
  errorDetails => $azure_job_error_details
  expectedDataSizeInTeraBytes => "1234 (optional)",
  jobDetailsType => "jobDetailsType",
  jobStages => $azure_job_stages
  preferences => $azure_preferences
  returnPackage => $azure_package_shipping_details
  shippingAddress => $azure_shipping_address
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contactDetails | [ContactDetails](#contactdetails) | true | Contact details for notification and shipping. |
|copyLogDetails | [CopyLogDetails](#copylogdetails) | false | List of copy log details. |
|deliveryPackage | [PackageShippingDetails](#packageshippingdetails) | false | Delivery package shipping details. |
|destinationAccountDetails | [DestinationAccountDetails](#destinationaccountdetails) | true | Destination account details. |
|errorDetails | [JobErrorDetails](#joberrordetails) | false | Error details for failure. This is optional. |
|expectedDataSizeInTeraBytes | Integer | false | The expected size of the data, which needs to be transferred in this job, in terabytes. |
|jobDetailsType | String | true | Indicates the type of job details. |
|jobStages | [JobStages](#jobstages) | false | List of stages that run in the job. |
|preferences | [Preferences](#preferences) | false | Preferences for the order. |
|returnPackage | [PackageShippingDetails](#packageshippingdetails) | false | Return package shipping details. |
|shippingAddress | [ShippingAddress](#shippingaddress) | true | Shipping address of the customer. |
        
## ContactDetails

Contact Details.

```puppet
$azure_contact_details = {
  contactName => "contactName",
  emailList => "emailList",
  mobile => "mobile (optional)",
  notificationPreference => $azure_notification_preference
  phone => "phone",
  phoneExtension => "phoneExtension (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contactName | String | true | Contact name of the person. |
|emailList | Array | true | List of Email-ids to be notified about job progress. |
|mobile | String | false | Mobile number of the contact person. |
|notificationPreference | [NotificationPreference](#notificationpreference) | false | Notification preference for a job stage. |
|phone | String | true | Phone number of the contact person. |
|phoneExtension | String | false | Phone extension number of the contact person. |
        
## NotificationPreference

Notification preference for a job stage.

```puppet
$azure_notification_preference = {
  sendNotification => "sendNotification",
  stageName => "stageName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|sendNotification | Boolean | true | Notification is required or not. |
|stageName | String | true | Name of the stage. |
        
## CopyLogDetails

Details for log generated during copy.

```puppet
$azure_copy_log_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## PackageShippingDetails

Shipping details.

```puppet
$azure_package_shipping_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## DestinationAccountDetails

Details of the destination of the data

```puppet
$azure_destination_account_details = {
  accountId => "accountId (optional)",
  dataDestinationType => "dataDestinationType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountId | String | false | Arm Id of the destination where the data has to be moved. |
|dataDestinationType | String | true | Data Destination Type. |
        
## JobErrorDetails

Job Error Details for providing the information and recommended action.

```puppet
$azure_job_error_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## JobStages

Job stages.

```puppet
$azure_job_stages = {
  errorDetails => $azure_job_error_details
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|errorDetails | [JobErrorDetails](#joberrordetails) | false | Error details for the stage. |
        
        
## Preferences

Preferences related to the order

```puppet
$azure_preferences = {
  preferredDataCenterRegion => "preferredDataCenterRegion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|preferredDataCenterRegion | Array | false |  |
        
        
## ShippingAddress

Shipping address where customer wishes to receive the device.

```puppet
$azure_shipping_address = {
  addressType => "addressType (optional)",
  city => "city (optional)",
  companyName => "companyName (optional)",
  country => "country",
  postalCode => "postalCode",
  stateOrProvince => "stateOrProvince (optional)",
  streetAddress1 => "streetAddress1",
  streetAddress2 => "streetAddress2 (optional)",
  streetAddress3 => "streetAddress3 (optional)",
  zipExtendedCode => "zipExtendedCode (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressType | String | false | Type of address. |
|city | String | false | Name of the City. |
|companyName | String | false | Name of the company. |
|country | String | true | Name of the Country. |
|postalCode | String | true | Postal code. |
|stateOrProvince | String | false | Name of the State or Province. |
|streetAddress1 | String | true | Street Address line 1. |
|streetAddress2 | String | false | Street Address line 2. |
|streetAddress3 | String | false | Street Address line 3. |
|zipExtendedCode | String | false | Extended Zip Code. |
        
## Error

Top level error for the job.

```puppet
$azure_error = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the JobResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBox/jobs/%{job_name}`|Put|Creates a new job with the specified parameters. Existing job cannot be updated with this API and should instead be updated with the Update job API.|Jobs_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DataBox/jobs`|Get|Lists all the jobs available under the subscription.|Jobs_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBox/jobs/%{job_name}`|Get|Gets information about the specified job.|Jobs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.DataBox/jobs`|Get|Lists all the jobs available under the subscription.|Jobs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBox/jobs/%{job_name}`|Put|Creates a new job with the specified parameters. Existing job cannot be updated with this API and should instead be updated with the Update job API.|Jobs_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBox/jobs/%{job_name}`|Delete|Deletes a job.|Jobs_Delete|
