Document: "logic"
Path: "/root/specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccountPartner

```puppet
azure_integration_account_partner {
  api_version => "api_version",
  id => "id (optional)",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  name => "name (optional)",
  partner => "partner",
  partner_name => "partner_name",
  properties => $azure_integration_account_partner_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|id | String | false | The resource id. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|name | String | false | Gets the resource name. |
|partner | Hash | true | The integration account partner. |
|partner_name | String | true | The integration account partner name. |
|properties | [IntegrationAccountPartnerProperties](#integrationaccountpartnerproperties) | true | The integration account partner properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
|type | String | false | Gets the resource type. |
        
## IntegrationAccountPartnerProperties

```puppet
$azure_integration_account_partner_properties = {
  changedTime => "changedTime (optional)",
  content => $azure_partner_content
  createdTime => "createdTime (optional)",
  metadata => "metadata (optional)",
  partnerType => $azure_partner_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|changedTime | String | false | The changed time. |
|content | [PartnerContent](#partnercontent) | true | The partner content. |
|createdTime | String | false | The created time. |
|metadata | Hash | false | The metadata. |
|partnerType | [PartnerType](#partnertype) | true | The partner type. |
        
## PartnerContent

```puppet
$azure_partner_content = {
  b2b => $azure_b2_b_partner_content
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|b2b | [B2BPartnerContent](#b2bpartnercontent) | false | The B2B partner content. |
        
## B2BPartnerContent

```puppet
$azure_b2_b_partner_content = {
  businessIdentities => $azure_business_identity
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|businessIdentities | [BusinessIdentity](#businessidentity) | false | The list of partner business identities. |
        
## BusinessIdentity

```puppet
$azure_business_identity = {
  qualifier => "qualifier",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|qualifier | String | true | The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32 |
|value | String | true | The user defined business identity value. |
        
## PartnerType

```puppet
$azure_partner_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationAccountPartner

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/partners/%{partner_name}`|Put|Creates or updates an integration account partner.|Partners_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/partners/%{partner_name}`|Get|Gets an integration account partner.|Partners_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/partners`|Get|Gets a list of integration account partners.|Partners_ListByIntegrationAccounts|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/partners/%{partner_name}`|Put|Creates or updates an integration account partner.|Partners_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/partners/%{partner_name}`|Delete|Deletes an integration account partner.|Partners_Delete|