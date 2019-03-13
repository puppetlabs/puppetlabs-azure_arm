Document: "datacatalog"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/datacatalog/resource-manager/Microsoft.DataCatalog/stable/2016-03-30/datacatalog.json")

## ADCCatalog

Azure Data Catalog.

```puppet
azure_adc_catalog {
  api_version => "api_version",
  catalog_name => "catalog_name",
  etag => "etag (optional)",
  location => "location (optional)",
  properties => $azure_adc_catalog_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|catalog_name | String | true | The name of the data catalog in the specified subscription and resource group. |
|etag | String | false | Resource etag |
|location | String | false | Resource location |
|properties | [ADCCatalogProperties](#adccatalogproperties) | false | Azure Data Catalog properties. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## ADCCatalogProperties

Properties of the data catalog.

```puppet
$azure_adc_catalog_properties = {
  admins => $azure_principals
  enableAutomaticUnitAdjustment => "enableAutomaticUnitAdjustment (optional)",
  sku => "sku (optional)",
  successfullyProvisioned => "successfullyProvisioned (optional)",
  units => "1234 (optional)",
  users => $azure_principals
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|admins | [Principals](#principals) | false | Azure data catalog admin list. |
|enableAutomaticUnitAdjustment | Boolean | false | Automatic unit adjustment enabled or not. |
|sku | String | false | Azure data catalog SKU. |
|successfullyProvisioned | Boolean | false | Azure data catalog provision status. |
|units | Integer | false | Azure data catalog units. |
|users | [Principals](#principals) | false | Azure data catalog user list. |
        
## Principals

User principals.

```puppet
$azure_principals = {
  objectId => "objectId (optional)",
  upn => "upn (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|objectId | String | false | Object Id for the user |
|upn | String | false | UPN of the user. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ADCCatalog

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataCatalog/catalogs/%{catalog_name}`|Put|The Create Azure Data Catalog service operation creates a new data catalog service with the specified parameters. If the specific service already exists, then any patchable properties will be updated and any immutable properties will remain unchanged.|ADCCatalogs_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataCatalog/catalogs/%{catalog_name}`|Get|The Get Azure Data Catalog Service operation retrieves a json representation of the data catalog.|ADCCatalogs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataCatalog/catalogs`|Get|The List catalogs in Resource Group operation lists all the Azure Data Catalogs available under the given resource group.|ADCCatalogs_ListtByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataCatalog/catalogs/%{catalog_name}`|Put|The Create Azure Data Catalog service operation creates a new data catalog service with the specified parameters. If the specific service already exists, then any patchable properties will be updated and any immutable properties will remain unchanged.|ADCCatalogs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataCatalog/catalogs/%{catalog_name}`|Delete|The Delete Azure Data Catalog Service operation deletes an existing data catalog.|ADCCatalogs_Delete|
