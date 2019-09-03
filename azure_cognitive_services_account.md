Document: "cognitiveservices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cognitiveservices/resource-manager/Microsoft.CognitiveServices/stable/2017-04-18/cognitiveservices.json")

## CognitiveServicesAccount

Cognitive Services Account is an Azure resource representing the provisioned account, its type, location and SKU.

```puppet
azure_cognitive_services_account {
  account_name => "account_name",
  api_version => "api_version",
  etag => "etag (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_cognitive_services_account_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of Cognitive Services account. |
|api_version | String | true | Version of the API to be used with the client request. Current version is 2017-04-18 |
|etag | String | false | Entity Tag |
|kind | String | false | Type of cognitive service account. |
|location | String | false | The location of the resource |
|parameters | Hash | true | The parameters to provide for the created account. |
|properties | [CognitiveServicesAccountProperties](#cognitiveservicesaccountproperties) | false | Properties of Cognitive Services account. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. |
|sku | [Sku](#sku) | false | The SKU of Cognitive Services account. |
|subscription_id | String | true | Azure Subscription ID. |
|tags | Hash | false | Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. |
        
## CognitiveServicesAccountProperties

Properties of Cognitive Services account.

```puppet
$azure_cognitive_services_account_properties = {
  customSubDomainName => "customSubDomainName (optional)",
  endpoint => "endpoint (optional)",
  internalId => "internalId (optional)",
  networkAcls => $azure_network_rule_set
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customSubDomainName | String | false | Optional subdomain name used for token-based authentication. |
|endpoint | String | false | Endpoint of the created account. |
|internalId | String | false | The internal identifier. |
|networkAcls | [NetworkRuleSet](#networkruleset) | false | A collection of rules governing the accessibility from specific network locations. |
        
## NetworkRuleSet

A set of rules governing the network accessibility.

```puppet
$azure_network_rule_set = {
  bypass => "bypass (optional)",
  defaultAction => "defaultAction (optional)",
  ipRules => $azure_ip_rule
  virtualNetworkRules => $azure_virtual_network_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bypass | String | false | Tells what traffic can bypass network rules. This can be 'AzureServices' or 'None'.  If not specified the default is 'AzureServices'. |
|defaultAction | String | false | The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated. |
|ipRules | [IpRule](#iprule) | false | The list of IP address rules. |
|virtualNetworkRules | [VirtualNetworkRule](#virtualnetworkrule) | false | The list of virtual network rules. |
        
## IpRule

A rule governing the accessibility from a specific ip address or ip range.

```puppet
$azure_ip_rule = {
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|value | String | true | An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78). |
        
## VirtualNetworkRule

A rule governing the accessibility from a specific virtual network.

```puppet
$azure_virtual_network_rule = {
  id => "id",
  ignoreMissingVnetServiceEndpoint => "ignoreMissingVnetServiceEndpoint (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'. |
|ignoreMissingVnetServiceEndpoint | Boolean | false | Ignore missing vnet service endpoint or not. |
|state | String | false | Gets the state of virtual network rule. |
        
## Sku

The SKU of the cognitive services account.

```puppet
$azure_sku = {
  name => $azure_sku_name
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | [SkuName](#skuname) | true | Gets or sets the sku name. Required for account creation, optional for update. |
        
## SkuName

The name of SKU.

```puppet
$azure_sku_name = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CognitiveServicesAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Put|Create Cognitive Services Account. Accounts is a resource group wide resource type. It holds the keys for developer to access intelligent APIs. It's also the resource type for billing.|Accounts_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.CognitiveServices/accounts`|Get|Returns all the resources of a particular type belonging to a subscription.|Accounts_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Get|Returns a Cognitive Services account specified by the parameters.|Accounts_GetProperties|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts`|Get|Returns all the resources of a particular type belonging to a resource group|Accounts_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Put|Create Cognitive Services Account. Accounts is a resource group wide resource type. It holds the keys for developer to access intelligent APIs. It's also the resource type for billing.|Accounts_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Delete|Deletes a Cognitive Services account from the resource group. |Accounts_Delete|
