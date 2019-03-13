Document: "logic"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccountPartner

The integration account partner.

```puppet
azure_integration_account_partner {
  api_version => "api_version",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  partner => "partner",
  partner_name => "partner_name",
  properties => $azure_integration_account_partner_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|partner | Hash | true | The integration account partner. |
|partner_name | String | true | The integration account partner name. |
|properties | [IntegrationAccountPartnerProperties](#integrationaccountpartnerproperties) | true | The integration account partner properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
        
## IntegrationAccountPartnerProperties

The integration account partner properties.

```puppet
$azure_integration_account_partner_properties = {
  content => $azure_partner_content
  metadata => "metadata (optional)",
  partnerType => $azure_partner_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|content | [PartnerContent](#partnercontent) | true | The partner content. |
|metadata | Hash | false | The metadata. |
|partnerType | [PartnerType](#partnertype) | true | The partner type. |
        
## PartnerContent

The integration account partner content.

```puppet
$azure_partner_content = {
  b2b => $azure_b2_b_partner_content
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|b2b | [B2BPartnerContent](#b2bpartnercontent) | false | The B2B partner content. |
        
## B2BPartnerContent

The B2B partner content.

```puppet
$azure_b2_b_partner_content = {
  businessIdentities => $azure_business_identity
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|businessIdentities | [BusinessIdentity](#businessidentity) | false | The list of partner business identities. |
        
## BusinessIdentity

The integration account partner's business identity.

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
