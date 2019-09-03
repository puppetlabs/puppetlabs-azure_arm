Document: "azureFirewall"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/azureFirewall.json")

## AzureFirewall

Azure Firewall resource.

```puppet
azure_azure_firewall {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_azure_firewall_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update Azure Firewall operation. |
|properties | [AzureFirewallPropertiesFormat](#azurefirewallpropertiesformat) | false | Properties of the azure firewall. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|zones | Array | false | A list of availability zones denoting where the resource needs to come from. |
        
## AzureFirewallPropertiesFormat

Properties of the Azure Firewall.

```puppet
$azure_azure_firewall_properties_format = {
  applicationRuleCollections => $azure_azure_firewall_application_rule_collection
  firewallPolicy => $azure_sub_resource
  hubIpAddresses => $azure_hub_ip_addresses
  ipConfigurations => $azure_azure_firewall_ip_configuration
  natRuleCollections => $azure_azure_firewall_nat_rule_collection
  networkRuleCollections => $azure_azure_firewall_network_rule_collection
  provisioningState => $azure_provisioning_state
  threatIntelMode => $azure_azure_firewall_threat_intel_mode
  virtualHub => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationRuleCollections | [AzureFirewallApplicationRuleCollection](#azurefirewallapplicationrulecollection) | false | Collection of application rule collections used by Azure Firewall. |
|firewallPolicy | [SubResource](#subresource) | false | The firewallPolicy associated with this azure firewall. |
|hubIpAddresses | [HubIPAddresses](#hubipaddresses) | false | IP addresses associated with AzureFirewall. |
|ipConfigurations | [AzureFirewallIPConfiguration](#azurefirewallipconfiguration) | false | IP configuration of the Azure Firewall resource. |
|natRuleCollections | [AzureFirewallNatRuleCollection](#azurefirewallnatrulecollection) | false | Collection of NAT rule collections used by Azure Firewall. |
|networkRuleCollections | [AzureFirewallNetworkRuleCollection](#azurefirewallnetworkrulecollection) | false | Collection of network rule collections used by Azure Firewall. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|threatIntelMode | [AzureFirewallThreatIntelMode](#azurefirewallthreatintelmode) | false | The operation mode for Threat Intelligence. |
|virtualHub | [SubResource](#subresource) | false | The virtualHub to which the firewall belongs. |
        
## AzureFirewallApplicationRuleCollection

Application rule collection resource.

```puppet
$azure_azure_firewall_application_rule_collection = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_azure_firewall_application_rule_collection_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [AzureFirewallApplicationRuleCollectionPropertiesFormat](#azurefirewallapplicationrulecollectionpropertiesformat) | false | Properties of the azure firewall application rule collection. |
        
## AzureFirewallApplicationRuleCollectionPropertiesFormat

Properties of the application rule collection.

```puppet
$azure_azure_firewall_application_rule_collection_properties_format = {
  action => $azure_azure_firewall_rc_action
  priority => "1234 (optional)",
  provisioningState => $azure_provisioning_state
  rules => $azure_azure_firewall_application_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [AzureFirewallRCAction](#azurefirewallrcaction) | false | The action type of a rule collection. |
|priority | Integer | false | Priority of the application rule collection resource. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|rules | [AzureFirewallApplicationRule](#azurefirewallapplicationrule) | false | Collection of rules used by a application rule collection. |
        
## AzureFirewallRCAction

Properties of the AzureFirewallRCAction.

```puppet
$azure_azure_firewall_rc_action = {
  type => $azure_azure_firewall_rc_action_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | [AzureFirewallRCActionType](#azurefirewallrcactiontype) | false | The type of action. |
        
## AzureFirewallRCActionType

The action type of a rule collection.

```puppet
$azure_azure_firewall_rc_action_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ProvisioningState

The current provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## AzureFirewallApplicationRule

Properties of an application rule.

```puppet
$azure_azure_firewall_application_rule = {
  description => "description (optional)",
  fqdnTags => "fqdnTags (optional)",
  name => "name (optional)",
  protocols => $azure_azure_firewall_application_rule_protocol
  sourceAddresses => "sourceAddresses (optional)",
  targetFqdns => "targetFqdns (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Description of the rule. |
|fqdnTags | Array | false | List of FQDN Tags for this rule. |
|name | String | false | Name of the application rule. |
|protocols | [AzureFirewallApplicationRuleProtocol](#azurefirewallapplicationruleprotocol) | false | Array of ApplicationRuleProtocols. |
|sourceAddresses | Array | false | List of source IP addresses for this rule. |
|targetFqdns | Array | false | List of FQDNs for this rule. |
        
## AzureFirewallApplicationRuleProtocol

Properties of the application rule protocol.

```puppet
$azure_azure_firewall_application_rule_protocol = {
  port => "1234 (optional)",
  protocolType => $azure_azure_firewall_application_rule_protocol_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|port | Integer | false | Port number for the protocol, cannot be greater than 64000. This field is optional. |
|protocolType | [AzureFirewallApplicationRuleProtocolType](#azurefirewallapplicationruleprotocoltype) | false | Protocol type. |
        
## AzureFirewallApplicationRuleProtocolType

The protocol type of a Application Rule resource.

```puppet
$azure_azure_firewall_application_rule_protocol_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SubResource

Reference to another subresource.

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
## HubIPAddresses

IP addresses associated with azure firewall.

```puppet
$azure_hub_ip_addresses = {
  privateIPAddress => "privateIPAddress (optional)",
  publicIPAddresses => $azure_azure_firewall_public_ip_address
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|privateIPAddress | String | false | Private IP Address associated with azure firewall. |
|publicIPAddresses | [AzureFirewallPublicIPAddress](#azurefirewallpublicipaddress) | false | List of Public IP addresses associated with azure firewall. |
        
## AzureFirewallPublicIPAddress

Public IP Address associated with azure firewall.

```puppet
$azure_azure_firewall_public_ip_address = {
  address => "address (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|address | String | false | Public IP Address value. |
        
## AzureFirewallIPConfiguration

IP configuration of an Azure Firewall.

```puppet
$azure_azure_firewall_ip_configuration = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_azure_firewall_ip_configuration_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [AzureFirewallIPConfigurationPropertiesFormat](#azurefirewallipconfigurationpropertiesformat) | false | Properties of the azure firewall IP configuration. |
        
## AzureFirewallIPConfigurationPropertiesFormat

Properties of IP configuration of an Azure Firewall.

```puppet
$azure_azure_firewall_ip_configuration_properties_format = {
  provisioningState => $azure_provisioning_state
  publicIPAddress => $azure_sub_resource
  subnet => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|publicIPAddress | [SubResource](#subresource) | false | Reference of the PublicIP resource. This field is a mandatory input if subnet is not null. |
|subnet | [SubResource](#subresource) | false | Reference of the subnet resource. This resource must be named 'AzureFirewallSubnet'. |
        
        
        
        
## AzureFirewallNatRuleCollection

NAT rule collection resource.

```puppet
$azure_azure_firewall_nat_rule_collection = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_azure_firewall_nat_rule_collection_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [AzureFirewallNatRuleCollectionProperties](#azurefirewallnatrulecollectionproperties) | false | Properties of the azure firewall NAT rule collection. |
        
## AzureFirewallNatRuleCollectionProperties

Properties of the NAT rule collection.

```puppet
$azure_azure_firewall_nat_rule_collection_properties = {
  action => $azure_azure_firewall_nat_rc_action
  priority => "1234 (optional)",
  provisioningState => $azure_provisioning_state
  rules => $azure_azure_firewall_nat_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [AzureFirewallNatRCAction](#azurefirewallnatrcaction) | false | The action type of a NAT rule collection. |
|priority | Integer | false | Priority of the NAT rule collection resource. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|rules | [AzureFirewallNatRule](#azurefirewallnatrule) | false | Collection of rules used by a NAT rule collection. |
        
## AzureFirewallNatRCAction

AzureFirewall NAT Rule Collection Action.

```puppet
$azure_azure_firewall_nat_rc_action = {
  type => $azure_azure_firewall_nat_rc_action_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | [AzureFirewallNatRCActionType](#azurefirewallnatrcactiontype) | false | The type of action. |
        
## AzureFirewallNatRCActionType

The action type of a NAT rule collection.

```puppet
$azure_azure_firewall_nat_rc_action_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## AzureFirewallNatRule

Properties of a NAT rule.

```puppet
$azure_azure_firewall_nat_rule = {
  description => "description (optional)",
  destinationAddresses => "destinationAddresses (optional)",
  destinationPorts => "destinationPorts (optional)",
  name => "name (optional)",
  protocols => $azure_azure_firewall_network_rule_protocol
  sourceAddresses => "sourceAddresses (optional)",
  translatedAddress => "translatedAddress (optional)",
  translatedPort => "translatedPort (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Description of the rule. |
|destinationAddresses | Array | false | List of destination IP addresses for this rule. Supports IP ranges, prefixes, and service tags. |
|destinationPorts | Array | false | List of destination ports. |
|name | String | false | Name of the NAT rule. |
|protocols | [AzureFirewallNetworkRuleProtocol](#azurefirewallnetworkruleprotocol) | false | Array of AzureFirewallNetworkRuleProtocols applicable to this NAT rule. |
|sourceAddresses | Array | false | List of source IP addresses for this rule. |
|translatedAddress | String | false | The translated address for this NAT rule. |
|translatedPort | String | false | The translated port for this NAT rule. |
        
## AzureFirewallNetworkRuleProtocol

The protocol of a Network Rule resource.

```puppet
$azure_azure_firewall_network_rule_protocol = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## AzureFirewallNetworkRuleCollection

Network rule collection resource.

```puppet
$azure_azure_firewall_network_rule_collection = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_azure_firewall_network_rule_collection_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [AzureFirewallNetworkRuleCollectionPropertiesFormat](#azurefirewallnetworkrulecollectionpropertiesformat) | false | Properties of the azure firewall network rule collection. |
        
## AzureFirewallNetworkRuleCollectionPropertiesFormat

Properties of the network rule collection.

```puppet
$azure_azure_firewall_network_rule_collection_properties_format = {
  action => $azure_azure_firewall_rc_action
  priority => "1234 (optional)",
  provisioningState => $azure_provisioning_state
  rules => $azure_azure_firewall_network_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [AzureFirewallRCAction](#azurefirewallrcaction) | false | The action type of a rule collection. |
|priority | Integer | false | Priority of the network rule collection resource. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|rules | [AzureFirewallNetworkRule](#azurefirewallnetworkrule) | false | Collection of rules used by a network rule collection. |
        
        
        
## AzureFirewallNetworkRule

Properties of the network rule.

```puppet
$azure_azure_firewall_network_rule = {
  description => "description (optional)",
  destinationAddresses => "destinationAddresses (optional)",
  destinationPorts => "destinationPorts (optional)",
  name => "name (optional)",
  protocols => $azure_azure_firewall_network_rule_protocol
  sourceAddresses => "sourceAddresses (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Description of the rule. |
|destinationAddresses | Array | false | List of destination IP addresses. |
|destinationPorts | Array | false | List of destination ports. |
|name | String | false | Name of the network rule. |
|protocols | [AzureFirewallNetworkRuleProtocol](#azurefirewallnetworkruleprotocol) | false | Array of AzureFirewallNetworkRuleProtocols. |
|sourceAddresses | Array | false | List of source IP addresses for this rule. |
        
        
        
## AzureFirewallThreatIntelMode

The operation mode for Threat Intel.

```puppet
$azure_azure_firewall_threat_intel_mode = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AzureFirewall

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/azureFirewalls/%{azure_firewall_name}`|Put|Creates or updates the specified Azure Firewall.|AzureFirewalls_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/azureFirewalls`|Get|Gets all the Azure Firewalls in a subscription.|AzureFirewalls_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/azureFirewalls/%{azure_firewall_name}`|Get|Gets the specified Azure Firewall.|AzureFirewalls_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/azureFirewalls`|Get|Lists all Azure Firewalls in a resource group.|AzureFirewalls_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/azureFirewalls/%{azure_firewall_name}`|Put|Creates or updates the specified Azure Firewall.|AzureFirewalls_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/azureFirewalls/%{azure_firewall_name}`|Delete|Deletes the specified Azure Firewall.|AzureFirewalls_Delete|
