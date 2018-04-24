Document: "storageimportexport"
Path: "/root/specs/specification/storageimportexport/resource-manager/Microsoft.ImportExport/stable/2016-11-01/storageimportexport.json")

## JobResponse

```puppet
azure_job_response {
  api_version => "api_version",
  body => "body",
  id => "id (optional)",
  job_name => "job_name",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_job_details
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the API version to use for this request. |
|body | Hash | true | The parameters used for creating the job |
|id | String | false | Specifies the resource identifier of the job. |
|job_name | String | true | The name of the import/export job. |
|location | String | false | Specifies the Azure location where the job is created. |
|name | String | false | Specifies the name of the job. |
|properties | [JobDetails](#jobdetails) | false | Specifies the job properties |
|resource_group_name | String | true | The resource group name uniquely identifies the resource group within the user subscription. |
|subscription_id | String | true | The subscription ID for the Azure user. |
|tags | Hash | false | Specifies the tags that are assigned to the job. |
|type | String | false | Specifies the type of the job resource. |
        
## JobDetails

```puppet
$azure_job_details = {
  backupDriveManifest => "backupDriveManifest (optional)",
  cancelRequested => "cancelRequested (optional)",
  deliveryPackage => $azure_package_infomation
  diagnosticsPath => "diagnosticsPath (optional)",
  driveList => $azure_drive_status
  export => $azure_export
  incompleteBlobListUri => "incompleteBlobListUri (optional)",
  jobType => "jobType (optional)",
  logLevel => "logLevel (optional)",
  percentComplete => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  returnAddress => $azure_return_address
  returnPackage => $azure_package_infomation
  returnShipping => $azure_return_shipping
  shippingInformation => $azure_shipping_information
  state => "state (optional)",
  storageAccountId => "storageAccountId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backupDriveManifest | Boolean | false | Default value is false. Indicates whether the manifest files on the drives should be copied to block blobs. |
|cancelRequested | Boolean | false | Indicates whether a request has been submitted to cancel the job. |
|deliveryPackage | [PackageInfomation](#packageinfomation) | false | Contains information about the package being shipped by the customer to the Microsoft data center.  |
|diagnosticsPath | String | false | The virtual blob directory to which the copy logs and backups of drive manifest files (if enabled) will be stored. |
|driveList | [DriveStatus](#drivestatus) | false | List of up to ten drives that comprise the job. The drive list is a required element for an import job; it is not specified for export jobs. |
|export | [Export](#export) | false | A property containing information about the blobs to be exported for an export job. This property is included for export jobs only. |
|incompleteBlobListUri | String | false | A blob path that points to a block blob containing a list of blob names that were not exported due to insufficient drive space. If all blobs were exported successfully, then this element is not included in the response. |
|jobType | String | false | The type of job |
|logLevel | String | false | Default value is Error. Indicates whether error logging or verbose logging will be enabled. |
|percentComplete | Integer | false | Overall percentage completed for the job. |
|provisioningState | String | false | Specifies the provisioning state of the job. |
|returnAddress | [ReturnAddress](#returnaddress) | false | Specifies the return address information for the job.  |
|returnPackage | [PackageInfomation](#packageinfomation) | false | Contains information about the package being shipped from the Microsoft data center to the customer to return the drives. The format is the same as the deliveryPackage property above. This property is not included if the drives have not yet been returned.  |
|returnShipping | [ReturnShipping](#returnshipping) | false | Specifies the return carrier and customer's account with the carrier.  |
|shippingInformation | [ShippingInformation](#shippinginformation) | false | Contains information about the Microsoft datacenter to which the drives should be shipped.  |
|state | String | false | Current state of the job. |
|storageAccountId | String | false | The resource identifier of the storage account where data will be imported to or exported from. |
        
## PackageInfomation

```puppet
$azure_package_infomation = {
  carrierName => "carrierName",
  driveCount => "1234",
  shipDate => "shipDate",
  trackingNumber => "trackingNumber",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|carrierName | String | true | The name of the carrier that is used to ship the import or export drives. |
|driveCount | Integer | true | The number of drives included in the package. |
|shipDate | String | true | The date when the package is shipped. |
|trackingNumber | String | true | The tracking number of the package. |
        
## DriveStatus

```puppet
$azure_drive_status = {
  bitLockerKey => "bitLockerKey (optional)",
  bytesSucceeded => "1234 (optional)",
  copyStatus => "copyStatus (optional)",
  driveHeaderHash => "driveHeaderHash (optional)",
  driveId => "driveId (optional)",
  errorLogUri => "errorLogUri (optional)",
  manifestFile => "manifestFile (optional)",
  manifestHash => "manifestHash (optional)",
  manifestUri => "manifestUri (optional)",
  percentComplete => "1234 (optional)",
  state => "state (optional)",
  verboseLogUri => "verboseLogUri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bitLockerKey | String | false | The BitLocker key used to encrypt the drive. |
|bytesSucceeded | Integer | false | Bytes successfully transferred for the drive. |
|copyStatus | String | false | Detailed status about the data transfer process. This field is not returned in the response until the drive is in the Transferring state. |
|driveHeaderHash | String | false | The drive header hash value. |
|driveId | String | false | The drive's hardware serial number, without spaces. |
|errorLogUri | String | false | A URI that points to the blob containing the error log for the data transfer operation. |
|manifestFile | String | false | The relative path of the manifest file on the drive.  |
|manifestHash | String | false | The Base16-encoded MD5 hash of the manifest file on the drive. |
|manifestUri | String | false | A URI that points to the blob containing the drive manifest file.  |
|percentComplete | Integer | false | Percentage completed for the drive.  |
|state | String | false | The drive's current state.  |
|verboseLogUri | String | false | A URI that points to the blob containing the verbose log for the data transfer operation.  |
        
## Export

```puppet
$azure_export = {
  blobList => "blobList (optional)",
  blobListblobPath => "blobListblobPath (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|blobList | String | false | A list of the blobs to be exported. |
|blobListblobPath | String | false | The relative URI to the block blob that contains the list of blob paths or blob path prefixes as defined above, beginning with the container name. If the blob is in root container, the URI must begin with $root.  |
        
## ReturnAddress

```puppet
$azure_return_address = {
  city => "city",
  countryOrRegion => "countryOrRegion",
  email => "email",
  phone => "phone",
  postalCode => "postalCode",
  recipientName => "recipientName",
  stateOrProvince => "stateOrProvince (optional)",
  streetAddress1 => "streetAddress1",
  streetAddress2 => "streetAddress2 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|city | String | true | The city name to use when returning the drives. |
|countryOrRegion | String | true | The country or region to use when returning the drives.  |
|email | String | true | Email address of the recipient of the returned drives. |
|phone | String | true | Phone number of the recipient of the returned drives. |
|postalCode | String | true | The postal code to use when returning the drives. |
|recipientName | String | true | The name of the recipient who will receive the hard drives when they are returned.  |
|stateOrProvince | String | false | The state or province to use when returning the drives. |
|streetAddress1 | String | true | The first line of the street address to use when returning the drives.  |
|streetAddress2 | String | false | The second line of the street address to use when returning the drives.  |
        
        
## ReturnShipping

```puppet
$azure_return_shipping = {
  carrierAccountNumber => "carrierAccountNumber",
  carrierName => "carrierName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|carrierAccountNumber | String | true | The customer's account number with the carrier. |
|carrierName | String | true | The carrier's name. |
        
## ShippingInformation

```puppet
$azure_shipping_information = {
  city => "city",
  countryOrRegion => "countryOrRegion",
  phone => "phone (optional)",
  postalCode => "postalCode",
  recipientName => "recipientName",
  stateOrProvince => "stateOrProvince",
  streetAddress1 => "streetAddress1",
  streetAddress2 => "streetAddress2 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|city | String | true | The city name to use when returning the drives. |
|countryOrRegion | String | true | The country or region to use when returning the drives.  |
|phone | String | false | Phone number of the recipient of the returned drives. |
|postalCode | String | true | The postal code to use when returning the drives. |
|recipientName | String | true | The name of the recipient who will receive the hard drives when they are returned.  |
|stateOrProvince | String | true | The state or province to use when returning the drives. |
|streetAddress1 | String | true | The first line of the street address to use when returning the drives.  |
|streetAddress2 | String | false | The second line of the street address to use when returning the drives.  |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the JobResponse

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ImportExport/jobs/%{job_name}`|Put|Creates a new job or updates an existing job in the specified subscription.|Jobs_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ImportExport/jobs`|Get|Returns all active and completed jobs in a subscription.|Jobs_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ImportExport/jobs/%{job_name}`|Get|Gets information about an existing job.|Jobs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.ImportExport/jobs`|Get|Returns all active and completed jobs in a subscription.|Jobs_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ImportExport/jobs/%{job_name}`|Put|Creates a new job or updates an existing job in the specified subscription.|Jobs_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ImportExport/jobs/%{job_name}`|Delete|Deletes an existing job. Only jobs in the Creating or Completed states can be deleted.|Jobs_Delete|