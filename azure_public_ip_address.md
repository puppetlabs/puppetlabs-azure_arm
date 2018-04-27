Document: "publicIpAddress"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-04-01/publicIpAddress.json")

## PublicIPAddress

```puppet
azure_public_ip_address {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_public_ip_address_properties_format
  resource_group_name => "resource_group_name",
  sku => $azure_public_ip_address_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the create or update public IP address operation. |
|properties | [PublicIPAddressPropertiesFormat](#publicipaddresspropertiesformat) | false | Public IP address properties. |
|resource_group_name | String | true | The name of the resource group. |
|sku | [PublicIPAddressSku](#publicipaddresssku) | false | The public IP address SKU. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
|zones | Array | false | A list of availability zones denoting the IP allocated for the resource needs to come from. |
        
## PublicIPAddressPropertiesFormat

```puppet
$azure_public_ip_address_properties_format = {
  dnsSettings => $azure_public_ip_address_dns_settings
  idleTimeoutInMinutes => "1234 (optional)",
  ipAddress => "ipAddress (optional)",
  ipConfiguration => $azure_ip_configuration
  ipTags => $azure_ip_tag
  provisioningState => "provisioningState (optional)",
  publicIPAddressVersion => "publicIPAddressVersion (optional)",
  publicIPAllocationMethod => "publicIPAllocationMethod (optional)",
  resourceGuid => "resourceGuid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsSettings | [PublicIPAddressDnsSettings](#publicipaddressdnssettings) | false | The FQDN of the DNS record associated with the public IP address. |
|idleTimeoutInMinutes | Integer | false | The idle timeout of the public IP address. |
|ipAddress | String | false | The IP address associated with the public IP address resource. |
|ipConfiguration | [IPConfiguration](#ipconfiguration) | false | The IP configuration associated with the public IP address. |
|ipTags | [IpTag](#iptag) | false | The list of tags associated with the public IP address. |
|provisioningState | String | false | The provisioning state of the PublicIP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddressVersion | String | false | The public IP address version. Possible values are: 'IPv4' and 'IPv6'. |
|publicIPAllocationMethod | String | false | The public IP allocation method. Possible values are: 'Static' and 'Dynamic'. |
|resourceGuid | String | false | The resource GUID property of the public IP resource. |
        
## PublicIPAddressDnsSettings

```puppet
$azure_public_ip_address_dns_settings = {
  domainNameLabel => "domainNameLabel (optional)",
  fqdn => "fqdn (optional)",
  reverseFqdn => "reverseFqdn (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|domainNameLabel | String | false | Gets or sets the Domain name label.The concatenation of the domain name label and the regionalized DNS zone make up the fully qualified domain name associated with the public IP address. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. |
|fqdn | String | false | Gets the FQDN, Fully qualified domain name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone. |
|reverseFqdn | String | false | Gets or Sets the Reverse FQDN. A user-visible, fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.  |
        
## IPConfiguration

```puppet
$azure_ip_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_ip_configuration_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [IPConfigurationPropertiesFormat](#ipconfigurationpropertiesformat) | false | Properties of the IP configuration |
        
## IPConfigurationPropertiesFormat

```puppet
$azure_ip_configuration_properties_format = {
  privateIPAddress => "privateIPAddress (optional)",
  privateIPAllocationMethod => "privateIPAllocationMethod (optional)",
  provisioningState => "provisioningState (optional)",
  publicIPAddress => $azure_public_ip_address
  subnet => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|privateIPAddress | String | false | The private IP address of the IP configuration. |
|privateIPAllocationMethod | String | false | The private IP allocation method. Possible values are 'Static' and 'Dynamic'. |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddress | [PublicIPAddress](#publicipaddress) | false | The reference of the public IP resource. |
|subnet | [Subnet](#subnet) | false | The reference of the subnet resource. |
        
        
## Subnet

```puppet
$azure_subnet = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_subnet_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [SubnetPropertiesFormat](#subnetpropertiesformat) | false | Properties of the subnet. |
        
## SubnetPropertiesFormat

```puppet
$azure_subnet_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  ipConfigurations => $azure_ip_configuration
  networkSecurityGroup => $azure_network_security_group
  provisioningState => "provisioningState (optional)",
  resourceNavigationLinks => $azure_resource_navigation_link
  routeTable => $azure_route_table
  serviceEndpoints => $azure_service_endpoint_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | The address prefix for the subnet. |
|ipConfigurations | [IPConfiguration](#ipconfiguration) | false | Gets an array of references to the network interface IP configurations using subnet. |
|networkSecurityGroup | [NetworkSecurityGroup](#networksecuritygroup) | false | The reference of the NetworkSecurityGroup resource. |
|provisioningState | String | false | The provisioning state of the resource. |
|resourceNavigationLinks | [ResourceNavigationLink](#resourcenavigationlink) | false | Gets an array of references to the external resources using subnet. |
|routeTable | [RouteTable](#routetable) | false | The reference of the RouteTable resource. |
|serviceEndpoints | [ServiceEndpointPropertiesFormat](#serviceendpointpropertiesformat) | false | An array of service endpoints. |
        
        
## NetworkSecurityGroup

```puppet
$azure_network_security_group = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_network_security_group_properties_format
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|properties | [NetworkSecurityGroupPropertiesFormat](#networksecuritygrouppropertiesformat) | false | Properties of the network security group |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## NetworkSecurityGroupPropertiesFormat

```puppet
$azure_network_security_group_properties_format = {
  defaultSecurityRules => $azure_security_rule
  networkInterfaces => $azure_network_interface
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
  securityRules => $azure_security_rule
  subnets => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultSecurityRules | [SecurityRule](#securityrule) | false | The default security rules of network security group. |
|networkInterfaces | [NetworkInterface](#networkinterface) | false | A collection of references to network interfaces. |
|provisioningState | String | false | The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the network security group resource. |
|securityRules | [SecurityRule](#securityrule) | false | A collection of security rules of the network security group. |
|subnets | [Subnet](#subnet) | false | A collection of references to subnets. |
        
## SecurityRule

```puppet
$azure_security_rule = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_security_rule_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [SecurityRulePropertiesFormat](#securityrulepropertiesformat) | false | Properties of the security rule |
        
## SecurityRulePropertiesFormat

```puppet
$azure_security_rule_properties_format = {
  access => "access",
  description => "description (optional)",
  destinationAddressPrefix => "destinationAddressPrefix (optional)",
  destinationAddressPrefixes => "destinationAddressPrefixes (optional)",
  destinationApplicationSecurityGroups => $azure_application_security_group
  destinationPortRange => "destinationPortRange (optional)",
  destinationPortRanges => "destinationPortRanges (optional)",
  direction => "direction",
  priority => "1234 (optional)",
  protocol => "protocol",
  provisioningState => "provisioningState (optional)",
  sourceAddressPrefix => "sourceAddressPrefix (optional)",
  sourceAddressPrefixes => "sourceAddressPrefixes (optional)",
  sourceApplicationSecurityGroups => $azure_application_security_group
  sourcePortRange => "sourcePortRange (optional)",
  sourcePortRanges => "sourcePortRanges (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|access | String | true | The network traffic is allowed or denied. Possible values are: 'Allow' and 'Deny'. |
|description | String | false | A description for this rule. Restricted to 140 chars. |
|destinationAddressPrefix | String | false | The destination address prefix. CIDR or destination IP range. Asterix '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. |
|destinationAddressPrefixes | Array | false | The destination address prefixes. CIDR or destination IP ranges. |
|destinationApplicationSecurityGroups | [ApplicationSecurityGroup](#applicationsecuritygroup) | false | The application security group specified as destination. |
|destinationPortRange | String | false | The destination port or range. Integer or range between 0 and 65535. Asterix '*' can also be used to match all ports. |
|destinationPortRanges | Array | false | The destination port ranges. |
|direction | String | true | The direction of the rule. The direction specifies if rule will be evaluated on incoming or outcoming traffic. Possible values are: 'Inbound' and 'Outbound'. |
|priority | Integer | false | The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. |
|protocol | String | true | Network protocol this rule applies to. Possible values are 'Tcp', 'Udp', and '*'. |
|provisioningState | String | false | The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|sourceAddressPrefix | String | false | The CIDR or source IP range. Asterix '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.  |
|sourceAddressPrefixes | Array | false | The CIDR or source IP ranges. |
|sourceApplicationSecurityGroups | [ApplicationSecurityGroup](#applicationsecuritygroup) | false | The application security group specified as source. |
|sourcePortRange | String | false | The source port or range. Integer or range between 0 and 65535. Asterix '*' can also be used to match all ports. |
|sourcePortRanges | Array | false | The source port ranges. |
        
## ApplicationSecurityGroup

```puppet
$azure_application_security_group = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_application_security_group_properties_format
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|properties | [ApplicationSecurityGroupPropertiesFormat](#applicationsecuritygrouppropertiesformat) | false | Properties of the application security group. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## ApplicationSecurityGroupPropertiesFormat

```puppet
$azure_application_security_group_properties_format = {
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | The provisioning state of the application security group resource. Possible values are: 'Succeeded', 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the application security group resource. It uniquely identifies a resource, even if the user changes its name or migrate the resource across subscriptions or resource groups. |
        
        
## NetworkInterface

```puppet
$azure_network_interface = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_network_interface_properties_format
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|properties | [NetworkInterfacePropertiesFormat](#networkinterfacepropertiesformat) | false | Properties of the network interface. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## NetworkInterfacePropertiesFormat

```puppet
$azure_network_interface_properties_format = {
  dnsSettings => $azure_network_interface_dns_settings
  enableAcceleratedNetworking => "enableAcceleratedNetworking (optional)",
  enableIPForwarding => "enableIPForwarding (optional)",
  ipConfigurations => $azure_network_interface_ip_configuration
  macAddress => "macAddress (optional)",
  networkSecurityGroup => $azure_network_security_group
  primary => "primary (optional)",
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
  virtualMachine => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsSettings | [NetworkInterfaceDnsSettings](#networkinterfacednssettings) | false | The DNS settings in network interface. |
|enableAcceleratedNetworking | Boolean | false | If the network interface is accelerated networking enabled. |
|enableIPForwarding | Boolean | false | Indicates whether IP forwarding is enabled on this network interface. |
|ipConfigurations | [NetworkInterfaceIPConfiguration](#networkinterfaceipconfiguration) | false | A list of IPConfigurations of the network interface. |
|macAddress | String | false | The MAC address of the network interface. |
|networkSecurityGroup | [NetworkSecurityGroup](#networksecuritygroup) | false | The reference of the NetworkSecurityGroup resource. |
|primary | Boolean | false | Gets whether this is a primary network interface on a virtual machine. |
|provisioningState | String | false | The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the network interface resource. |
|virtualMachine | [SubResource](#subresource) | false | The reference of a virtual machine. |
        
## NetworkInterfaceDnsSettings

```puppet
$azure_network_interface_dns_settings = {
  appliedDnsServers => "appliedDnsServers (optional)",
  dnsServers => "dnsServers (optional)",
  internalDnsNameLabel => "internalDnsNameLabel (optional)",
  internalDomainNameSuffix => "internalDomainNameSuffix (optional)",
  internalFqdn => "internalFqdn (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|appliedDnsServers | Array | false | If the VM that uses this NIC is part of an Availability Set, then this list will have the union of all DNS servers from all NICs that are part of the Availability Set. This property is what is configured on each of those VMs. |
|dnsServers | Array | false | List of DNS servers IP addresses. Use 'AzureProvidedDNS' to switch to azure provided DNS resolution. 'AzureProvidedDNS' value cannot be combined with other IPs, it must be the only value in dnsServers collection. |
|internalDnsNameLabel | String | false | Relative DNS name for this NIC used for internal communications between VMs in the same virtual network. |
|internalDomainNameSuffix | String | false | Even if internalDnsNameLabel is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of internalDomainNameSuffix. |
|internalFqdn | String | false | Fully qualified DNS name supporting internal communications between VMs in the same virtual network. |
        
## NetworkInterfaceIPConfiguration

```puppet
$azure_network_interface_ip_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_network_interface_ip_configuration_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [NetworkInterfaceIPConfigurationPropertiesFormat](#networkinterfaceipconfigurationpropertiesformat) | false | Network interface IP configuration properties. |
        
## NetworkInterfaceIPConfigurationPropertiesFormat

```puppet
$azure_network_interface_ip_configuration_properties_format = {
  applicationGatewayBackendAddressPools => $azure_application_gateway_backend_address_pool
  applicationSecurityGroups => $azure_application_security_group
  loadBalancerBackendAddressPools => $azure_backend_address_pool
  loadBalancerInboundNatRules => $azure_inbound_nat_rule
  primary => "primary (optional)",
  privateIPAddress => "privateIPAddress (optional)",
  privateIPAddressVersion => "privateIPAddressVersion (optional)",
  privateIPAllocationMethod => "privateIPAllocationMethod (optional)",
  provisioningState => "provisioningState (optional)",
  publicIPAddress => $azure_public_ip_address
  subnet => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationGatewayBackendAddressPools | [ApplicationGatewayBackendAddressPool](#applicationgatewaybackendaddresspool) | false | The reference of ApplicationGatewayBackendAddressPool resource. |
|applicationSecurityGroups | [ApplicationSecurityGroup](#applicationsecuritygroup) | false | Application security groups in which the IP configuration is included. |
|loadBalancerBackendAddressPools | [BackendAddressPool](#backendaddresspool) | false | The reference of LoadBalancerBackendAddressPool resource. |
|loadBalancerInboundNatRules | [InboundNatRule](#inboundnatrule) | false | A list of references of LoadBalancerInboundNatRules. |
|primary | Boolean | false | Gets whether this is a primary customer address on the network interface. |
|privateIPAddress | String | false | Private IP address of the IP configuration. |
|privateIPAddressVersion | String | false | Available from Api-Version 2016-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'. |
|privateIPAllocationMethod | String | false | Defines how a private IP address is assigned. Possible values are: 'Static' and 'Dynamic'. |
|provisioningState | String | false | The provisioning state of the network interface IP configuration. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddress | [PublicIPAddress](#publicipaddress) | false | Public IP address bound to the IP configuration. |
|subnet | [Subnet](#subnet) | false | Subnet bound to the IP configuration. |
        
## ApplicationGatewayBackendAddressPool

```puppet
$azure_application_gateway_backend_address_pool = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_backend_address_pool_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayBackendAddressPoolPropertiesFormat](#applicationgatewaybackendaddresspoolpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayBackendAddressPoolPropertiesFormat

```puppet
$azure_application_gateway_backend_address_pool_properties_format = {
  backendAddresses => $azure_application_gateway_backend_address
  backendIPConfigurations => $azure_network_interface_ip_configuration
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendAddresses | [ApplicationGatewayBackendAddress](#applicationgatewaybackendaddress) | false | Backend addresses |
|backendIPConfigurations | [NetworkInterfaceIPConfiguration](#networkinterfaceipconfiguration) | false | Collection of references to IPs defined in network interfaces. |
|provisioningState | String | false | Provisioning state of the backend address pool resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
## ApplicationGatewayBackendAddress

```puppet
$azure_application_gateway_backend_address = {
  fqdn => "fqdn (optional)",
  ipAddress => "ipAddress (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fqdn | String | false | Fully qualified domain name (FQDN). |
|ipAddress | String | false | IP address |
        
        
        
## BackendAddressPool

```puppet
$azure_backend_address_pool = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_backend_address_pool_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [BackendAddressPoolPropertiesFormat](#backendaddresspoolpropertiesformat) | false | Properties of load balancer backend address pool. |
        
## BackendAddressPoolPropertiesFormat

```puppet
$azure_backend_address_pool_properties_format = {
  backendIPConfigurations => $azure_network_interface_ip_configuration
  loadBalancingRules => $azure_sub_resource
  outboundNatRule => $azure_sub_resource
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendIPConfigurations | [NetworkInterfaceIPConfiguration](#networkinterfaceipconfiguration) | false | Gets collection of references to IP addresses defined in network interfaces. |
|loadBalancingRules | [SubResource](#subresource) | false | Gets load balancing rules that use this backend address pool. |
|outboundNatRule | [SubResource](#subresource) | false | Gets outbound rules that use this backend address pool. |
|provisioningState | String | false | Get provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
        
## SubResource

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
        
## InboundNatRule

```puppet
$azure_inbound_nat_rule = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_inbound_nat_rule_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [InboundNatRulePropertiesFormat](#inboundnatrulepropertiesformat) | false | Properties of load balancer inbound nat rule. |
        
## InboundNatRulePropertiesFormat

```puppet
$azure_inbound_nat_rule_properties_format = {
  backendIPConfiguration => $azure_network_interface_ip_configuration
  backendPort => "1234 (optional)",
  enableFloatingIP => "enableFloatingIP (optional)",
  frontendIPConfiguration => $azure_sub_resource
  frontendPort => "1234 (optional)",
  idleTimeoutInMinutes => "1234 (optional)",
  protocol => $azure_transport_protocol
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendIPConfiguration | [NetworkInterfaceIPConfiguration](#networkinterfaceipconfiguration) | false | A reference to a private IP address defined on a network interface of a VM. Traffic sent to the frontend port of each of the frontend IP configurations is forwarded to the backend IP. |
|backendPort | Integer | false | The port used for the internal endpoint. Acceptable values range from 1 to 65535. |
|enableFloatingIP | Boolean | false | Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint. |
|frontendIPConfiguration | [SubResource](#subresource) | false | A reference to frontend IP addresses. |
|frontendPort | Integer | false | The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534. |
|idleTimeoutInMinutes | Integer | false | The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP. |
|protocol | [TransportProtocol](#transportprotocol) | false |  |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
        
        
## TransportProtocol

```puppet
$azure_transport_protocol = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
        
        
        
        
## ResourceNavigationLink

```puppet
$azure_resource_navigation_link = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_resource_navigation_link_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ResourceNavigationLinkFormat](#resourcenavigationlinkformat) | false | Resource navigation link properties format. |
        
## ResourceNavigationLinkFormat

```puppet
$azure_resource_navigation_link_format = {
  link => "link (optional)",
  linkedResourceType => "linkedResourceType (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|link | String | false | Link to the external resource |
|linkedResourceType | String | false | Resource type of the linked resource. |
|provisioningState | String | false | Provisioning state of the ResourceNavigationLink resource. |
        
## RouteTable

```puppet
$azure_route_table = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_route_table_properties_format
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|properties | [RouteTablePropertiesFormat](#routetablepropertiesformat) | false | Properties of the route table. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## RouteTablePropertiesFormat

```puppet
$azure_route_table_properties_format = {
  disableBgpRoutePropagation => "disableBgpRoutePropagation (optional)",
  provisioningState => "provisioningState (optional)",
  routes => $azure_route
  subnets => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|disableBgpRoutePropagation | Boolean | false | Gets or sets whether to disable the routes learned by BGP on that route table. True means disable. |
|provisioningState | String | false | The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|routes | [Route](#route) | false | Collection of routes contained within a route table. |
|subnets | [Subnet](#subnet) | false | A collection of references to subnets. |
        
## Route

```puppet
$azure_route = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_route_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [RoutePropertiesFormat](#routepropertiesformat) | false | Properties of the route. |
        
## RoutePropertiesFormat

```puppet
$azure_route_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  nextHopIpAddress => "nextHopIpAddress (optional)",
  nextHopType => "nextHopType",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | The destination CIDR to which the route applies. |
|nextHopIpAddress | String | false | The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance. |
|nextHopType | String | true | The type of Azure hop the packet should be sent to. Possible values are: 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance', and 'None' |
|provisioningState | String | false | The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
        
## ServiceEndpointPropertiesFormat

```puppet
$azure_service_endpoint_properties_format = {
  locations => "locations (optional)",
  provisioningState => "provisioningState (optional)",
  service => "service (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|locations | Array | false | A list of locations. |
|provisioningState | String | false | The provisioning state of the resource. |
|service | String | false | The type of the endpoint service. |
        
## IpTag

```puppet
$azure_ip_tag = {
  ipTagType => "ipTagType (optional)",
  tag => "tag (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ipTagType | String | false | Gets or sets the ipTag type: Example FirstPartyUsage. |
|tag | String | false | Gets or sets value of the IpTag associated with the public IP. Example SQL, Storage etc |
        
## PublicIPAddressSku

```puppet
$azure_public_ip_address_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of a public IP address SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PublicIPAddress

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/%{public_ip_address_name}`|Put|Creates or updates a static or dynamic public IP address.|PublicIPAddresses_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/publicIPAddresses`|Get|Gets all the public IP addresses in a subscription.|PublicIPAddresses_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/%{public_ip_address_name}`|Get|Gets the specified public IP address in a specified resource group.|PublicIPAddresses_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/publicIPAddresses`|Get|Gets all the public IP addresses in a subscription.|PublicIPAddresses_ListAll|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/%{public_ip_address_name}`|Put|Creates or updates a static or dynamic public IP address.|PublicIPAddresses_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/%{public_ip_address_name}`|Delete|Deletes the specified public IP address.|PublicIPAddresses_Delete|