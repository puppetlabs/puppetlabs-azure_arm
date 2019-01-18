Document: "applicationGateway"


Path: "/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/applicationGateway.json")

## ApplicationGateway

Application gateway resource

```puppet
azure_application_gateway {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  identity => $azure_managed_service_identity
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_application_gateway_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|identity | [ManagedServiceIdentity](#managedserviceidentity) | false | The identity of the application gateway, if configured. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update application gateway operation. |
|properties | [ApplicationGatewayPropertiesFormat](#applicationgatewaypropertiesformat) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|zones | Array | false | A list of availability zones denoting where the resource needs to come from. |
        
## ManagedServiceIdentity

Identity for the resource.

```puppet
$azure_managed_service_identity = {
  type => "type (optional)",
  userAssignedIdentities => "userAssignedIdentities (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine. |
|userAssignedIdentities | Hash | false | The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'. |
        
## ApplicationGatewayPropertiesFormat

Properties of the application gateway.

```puppet
$azure_application_gateway_properties_format = {
  authenticationCertificates => $azure_application_gateway_authentication_certificate
  autoscaleConfiguration => $azure_application_gateway_autoscale_configuration
  backendAddressPools => $azure_application_gateway_backend_address_pool
  backendHttpSettingsCollection => $azure_application_gateway_backend_http_settings
  customErrorConfigurations => $azure_application_gateway_custom_error
  enableFips => "enableFips (optional)",
  enableHttp2 => "enableHttp2 (optional)",
  frontendIPConfigurations => $azure_application_gateway_frontend_ip_configuration
  frontendPorts => $azure_application_gateway_frontend_port
  gatewayIPConfigurations => $azure_application_gateway_ip_configuration
  httpListeners => $azure_application_gateway_http_listener
  probes => $azure_application_gateway_probe
  provisioningState => "provisioningState (optional)",
  redirectConfigurations => $azure_application_gateway_redirect_configuration
  requestRoutingRules => $azure_application_gateway_request_routing_rule
  resourceGuid => "resourceGuid (optional)",
  rewriteRuleSets => $azure_application_gateway_rewrite_rule_set
  sku => $azure_application_gateway_sku
  sslCertificates => $azure_application_gateway_ssl_certificate
  sslPolicy => $azure_application_gateway_ssl_policy
  trustedRootCertificates => $azure_application_gateway_trusted_root_certificate
  urlPathMaps => $azure_application_gateway_url_path_map
  webApplicationFirewallConfiguration => $azure_application_gateway_web_application_firewall_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authenticationCertificates | [ApplicationGatewayAuthenticationCertificate](#applicationgatewayauthenticationcertificate) | false | Authentication certificates of the application gateway resource. |
|autoscaleConfiguration | [ApplicationGatewayAutoscaleConfiguration](#applicationgatewayautoscaleconfiguration) | false | Autoscale Configuration. |
|backendAddressPools | [ApplicationGatewayBackendAddressPool](#applicationgatewaybackendaddresspool) | false | Backend address pool of the application gateway resource. |
|backendHttpSettingsCollection | [ApplicationGatewayBackendHttpSettings](#applicationgatewaybackendhttpsettings) | false | Backend http settings of the application gateway resource. |
|customErrorConfigurations | [ApplicationGatewayCustomError](#applicationgatewaycustomerror) | false | Custom error configurations of the application gateway resource. |
|enableFips | Boolean | false | Whether FIPS is enabled on the application gateway resource. |
|enableHttp2 | Boolean | false | Whether HTTP2 is enabled on the application gateway resource. |
|frontendIPConfigurations | [ApplicationGatewayFrontendIPConfiguration](#applicationgatewayfrontendipconfiguration) | false | Frontend IP addresses of the application gateway resource. |
|frontendPorts | [ApplicationGatewayFrontendPort](#applicationgatewayfrontendport) | false | Frontend ports of the application gateway resource. |
|gatewayIPConfigurations | [ApplicationGatewayIPConfiguration](#applicationgatewayipconfiguration) | false | Subnets of application the gateway resource. |
|httpListeners | [ApplicationGatewayHttpListener](#applicationgatewayhttplistener) | false | Http listeners of the application gateway resource. |
|probes | [ApplicationGatewayProbe](#applicationgatewayprobe) | false | Probes of the application gateway resource. |
|provisioningState | String | false | Provisioning state of the application gateway resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|redirectConfigurations | [ApplicationGatewayRedirectConfiguration](#applicationgatewayredirectconfiguration) | false | Redirect configurations of the application gateway resource. |
|requestRoutingRules | [ApplicationGatewayRequestRoutingRule](#applicationgatewayrequestroutingrule) | false | Request routing rules of the application gateway resource. |
|resourceGuid | String | false | Resource GUID property of the application gateway resource. |
|rewriteRuleSets | [ApplicationGatewayRewriteRuleSet](#applicationgatewayrewriteruleset) | false | Rewrite rules for the application gateway resource. |
|sku | [ApplicationGatewaySku](#applicationgatewaysku) | false | SKU of the application gateway resource. |
|sslCertificates | [ApplicationGatewaySslCertificate](#applicationgatewaysslcertificate) | false | SSL certificates of the application gateway resource. |
|sslPolicy | [ApplicationGatewaySslPolicy](#applicationgatewaysslpolicy) | false | SSL policy of the application gateway resource. |
|trustedRootCertificates | [ApplicationGatewayTrustedRootCertificate](#applicationgatewaytrustedrootcertificate) | false | Trusted Root certificates of the application gateway resource. |
|urlPathMaps | [ApplicationGatewayUrlPathMap](#applicationgatewayurlpathmap) | false | URL path map of the application gateway resource. |
|webApplicationFirewallConfiguration | [ApplicationGatewayWebApplicationFirewallConfiguration](#applicationgatewaywebapplicationfirewallconfiguration) | false | Web application firewall configuration. |
        
## ApplicationGatewayAuthenticationCertificate

Authentication certificates of an application gateway.

```puppet
$azure_application_gateway_authentication_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_authentication_certificate_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the authentication certificate that is unique within an Application Gateway. |
|properties | [ApplicationGatewayAuthenticationCertificatePropertiesFormat](#applicationgatewayauthenticationcertificatepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayAuthenticationCertificatePropertiesFormat

Authentication certificates properties of an application gateway.

```puppet
$azure_application_gateway_authentication_certificate_properties_format = {
  data => "data (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|data | String | false | Certificate public data. |
|provisioningState | String | false | Provisioning state of the authentication certificate resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
## ApplicationGatewayAutoscaleConfiguration

Application Gateway autoscale configuration.

```puppet
$azure_application_gateway_autoscale_configuration = {
  minCapacity => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|minCapacity | Integer | true | Lower bound on number of Application Gateway instances |
        
## ApplicationGatewayBackendAddressPool

Backend Address Pool of an application gateway.

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
|name | String | false | Name of the backend address pool that is unique within an Application Gateway. |
|properties | [ApplicationGatewayBackendAddressPoolPropertiesFormat](#applicationgatewaybackendaddresspoolpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayBackendAddressPoolPropertiesFormat

Properties of Backend Address Pool of an application gateway.

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

Backend address of an application gateway.

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
        
## NetworkInterfaceIPConfiguration

IPConfiguration in a network interface.

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

Properties of IP configuration.

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
  virtualNetworkTaps => $azure_virtual_network_tap
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
|virtualNetworkTaps | [VirtualNetworkTap](#virtualnetworktap) | false | The reference to Virtual Network Taps. |
        
        
## ApplicationSecurityGroup

An application security group in a resource group.

```puppet
$azure_application_security_group = {
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_application_security_group_properties_format
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [ApplicationSecurityGroupPropertiesFormat](#applicationsecuritygrouppropertiesformat) | false | Properties of the application security group. |
|tags | Hash | false | Resource tags. |
        
## ApplicationSecurityGroupPropertiesFormat

Application security group properties.

```puppet
$azure_application_security_group_properties_format = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## BackendAddressPool

Pool of backend IP addresses.

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

Properties of the backend address pool.

```puppet
$azure_backend_address_pool_properties_format = {
  backendIPConfigurations => $azure_network_interface_ip_configuration
  loadBalancingRules => $azure_sub_resource
  outboundRule => $azure_sub_resource
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendIPConfigurations | [NetworkInterfaceIPConfiguration](#networkinterfaceipconfiguration) | false | Gets collection of references to IP addresses defined in network interfaces. |
|loadBalancingRules | [SubResource](#subresource) | false | Gets load balancing rules that use this backend address pool. |
|outboundRule | [SubResource](#subresource) | false | Gets outbound rules that use this backend address pool. |
|provisioningState | String | false | Get provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
        
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
        
        
## InboundNatRule

Inbound NAT rule of the load balancer.

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

Properties of the inbound NAT rule.

```puppet
$azure_inbound_nat_rule_properties_format = {
  backendIPConfiguration => $azure_network_interface_ip_configuration
  backendPort => "1234 (optional)",
  enableFloatingIP => "enableFloatingIP (optional)",
  enableTcpReset => "enableTcpReset (optional)",
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
|enableTcpReset | Boolean | false | Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. |
|frontendIPConfiguration | [SubResource](#subresource) | false | A reference to frontend IP addresses. |
|frontendPort | Integer | false | The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534. |
|idleTimeoutInMinutes | Integer | false | The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP. |
|protocol | [TransportProtocol](#transportprotocol) | false |  |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
        
        
## TransportProtocol

The transport protocol for the endpoint. Possible values are 'Udp' or 'Tcp' or 'All'.

```puppet
$azure_transport_protocol = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## PublicIPAddress

Public IP address resource.

```puppet
$azure_public_ip_address = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_public_ip_address_properties_format
  sku => $azure_public_ip_address_sku
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [PublicIPAddressPropertiesFormat](#publicipaddresspropertiesformat) | false | Public IP address properties. |
|sku | [PublicIPAddressSku](#publicipaddresssku) | false | The public IP address SKU. |
|tags | Hash | false | Resource tags. |
|zones | Array | false | A list of availability zones denoting the IP allocated for the resource needs to come from. |
        
## PublicIPAddressPropertiesFormat

Public IP address properties.

```puppet
$azure_public_ip_address_properties_format = {
  ddosSettings => $azure_ddos_settings
  dnsSettings => $azure_public_ip_address_dns_settings
  idleTimeoutInMinutes => "1234 (optional)",
  ipAddress => "ipAddress (optional)",
  ipConfiguration => $azure_ip_configuration
  ipTags => $azure_ip_tag
  provisioningState => "provisioningState (optional)",
  publicIPAddressVersion => "publicIPAddressVersion (optional)",
  publicIPAllocationMethod => "publicIPAllocationMethod (optional)",
  publicIPPrefix => $azure_sub_resource
  resourceGuid => "resourceGuid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ddosSettings | [DdosSettings](#ddossettings) | false | The DDoS protection custom policy associated with the public IP address. |
|dnsSettings | [PublicIPAddressDnsSettings](#publicipaddressdnssettings) | false | The FQDN of the DNS record associated with the public IP address. |
|idleTimeoutInMinutes | Integer | false | The idle timeout of the public IP address. |
|ipAddress | String | false | The IP address associated with the public IP address resource. |
|ipConfiguration | [IPConfiguration](#ipconfiguration) | false | The IP configuration associated with the public IP address. |
|ipTags | [IpTag](#iptag) | false | The list of tags associated with the public IP address. |
|provisioningState | String | false | The provisioning state of the PublicIP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddressVersion | String | false | The public IP address version. Possible values are: 'IPv4' and 'IPv6'. |
|publicIPAllocationMethod | String | false | The public IP allocation method. Possible values are: 'Static' and 'Dynamic'. |
|publicIPPrefix | [SubResource](#subresource) | false | The Public IP Prefix this Public IP Address should be allocated from. |
|resourceGuid | String | false | The resource GUID property of the public IP resource. |
        
## DdosSettings

Contains the DDoS protection settings of the public IP.

```puppet
$azure_ddos_settings = {
  ddosCustomPolicy => $azure_sub_resource
  protectionCoverage => "protectionCoverage (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ddosCustomPolicy | [SubResource](#subresource) | false | The DDoS custom policy associated with the public IP. |
|protectionCoverage | String | false | The DDoS protection policy customizability of the public IP. Only standard coverage will have the ability to be customized. |
        
        
## PublicIPAddressDnsSettings

Contains FQDN of the DNS record associated with the public IP address

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

IP configuration

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

Properties of IP configuration.

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

Subnet in a virtual network resource.

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

Properties of the subnet.

```puppet
$azure_subnet_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  addressPrefixes => "addressPrefixes (optional)",
  delegations => $azure_delegation
  interfaceEndpoints => $azure_interface_endpoint
  ipConfigurationProfiles => $azure_ip_configuration_profile
  ipConfigurations => $azure_ip_configuration
  networkSecurityGroup => $azure_network_security_group
  provisioningState => "provisioningState (optional)",
  resourceNavigationLinks => $azure_resource_navigation_link
  routeTable => $azure_route_table
  serviceAssociationLinks => $azure_service_association_link
  serviceEndpointPolicies => $azure_service_endpoint_policy
  serviceEndpoints => $azure_service_endpoint_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | The address prefix for the subnet. |
|addressPrefixes | Array | false | List of  address prefixes for the subnet. |
|delegations | [Delegation](#delegation) | false | Gets an array of references to the delegations on the subnet. |
|interfaceEndpoints | [InterfaceEndpoint](#interfaceendpoint) | false | An array of references to interface endpoints  |
|ipConfigurationProfiles | [IPConfigurationProfile](#ipconfigurationprofile) | false | Array of IP configuration profiles which reference this subnet. |
|ipConfigurations | [IPConfiguration](#ipconfiguration) | false | Gets an array of references to the network interface IP configurations using subnet. |
|networkSecurityGroup | [NetworkSecurityGroup](#networksecuritygroup) | false | The reference of the NetworkSecurityGroup resource. |
|provisioningState | String | false | The provisioning state of the resource. |
|resourceNavigationLinks | [ResourceNavigationLink](#resourcenavigationlink) | false | Gets an array of references to the external resources using subnet. |
|routeTable | [RouteTable](#routetable) | false | The reference of the RouteTable resource. |
|serviceAssociationLinks | [ServiceAssociationLink](#serviceassociationlink) | false | Gets an array of references to services injecting into this subnet. |
|serviceEndpointPolicies | [ServiceEndpointPolicy](#serviceendpointpolicy) | false | An array of service endpoint policies. |
|serviceEndpoints | [ServiceEndpointPropertiesFormat](#serviceendpointpropertiesformat) | false | An array of service endpoints. |
        
## Delegation

Details the service to which the subnet is delegated.

```puppet
$azure_delegation = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_service_delegation_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a subnet. This name can be used to access the resource. |
|properties | [ServiceDelegationPropertiesFormat](#servicedelegationpropertiesformat) | false | Properties of the subnet. |
        
## ServiceDelegationPropertiesFormat

Properties of a service delegation.

```puppet
$azure_service_delegation_properties_format = {
  actions => "actions (optional)",
  serviceName => "serviceName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actions | Array | false | Describes the actions permitted to the service upon delegation |
|serviceName | String | false | The name of the service to whom the subnet should be delegated (e.g. Microsoft.Sql/servers) |
        
## InterfaceEndpoint

Interface endpoint resource.

```puppet
$azure_interface_endpoint = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_interface_endpoint_properties
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [InterfaceEndpointProperties](#interfaceendpointproperties) | false | Properties of the interface endpoint. |
|tags | Hash | false | Resource tags. |
        
## InterfaceEndpointProperties

Properties of the interface endpoint.

```puppet
$azure_interface_endpoint_properties = {
  endpointService => $azure_endpoint_service
  fqdn => "fqdn (optional)",
  networkInterfaces => $azure_network_interface
  subnet => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpointService | [EndpointService](#endpointservice) | false | A reference to the service being brought into the virtual network. |
|fqdn | String | false | A first-party service's FQDN that is mapped to the private IP allocated via this interface endpoint. |
|networkInterfaces | [NetworkInterface](#networkinterface) | false | Gets an array of references to the network interfaces created for this interface endpoint. |
|subnet | [Subnet](#subnet) | false | The ID of the subnet from which the private IP will be allocated. |
        
## EndpointService

Identifies the service being brought into the virtual network.

```puppet
$azure_endpoint_service = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | A unique identifier of the service being referenced by the interface endpoint. |
        
## NetworkInterface

A network interface in a resource group.

```puppet
$azure_network_interface = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_network_interface_properties_format
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [NetworkInterfacePropertiesFormat](#networkinterfacepropertiesformat) | false | Properties of the network interface. |
|tags | Hash | false | Resource tags. |
        
## NetworkInterfacePropertiesFormat

NetworkInterface properties. 

```puppet
$azure_network_interface_properties_format = {
  dnsSettings => $azure_network_interface_dns_settings
  enableAcceleratedNetworking => "enableAcceleratedNetworking (optional)",
  enableIPForwarding => "enableIPForwarding (optional)",
  interfaceEndpoint => $azure_interface_endpoint
  ipConfigurations => $azure_network_interface_ip_configuration
  macAddress => "macAddress (optional)",
  networkSecurityGroup => $azure_network_security_group
  primary => "primary (optional)",
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
  tapConfigurations => $azure_network_interface_tap_configuration
  virtualMachine => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsSettings | [NetworkInterfaceDnsSettings](#networkinterfacednssettings) | false | The DNS settings in network interface. |
|enableAcceleratedNetworking | Boolean | false | If the network interface is accelerated networking enabled. |
|enableIPForwarding | Boolean | false | Indicates whether IP forwarding is enabled on this network interface. |
|interfaceEndpoint | [InterfaceEndpoint](#interfaceendpoint) | false | A reference to the interface endpoint to which the network interface is linked. |
|ipConfigurations | [NetworkInterfaceIPConfiguration](#networkinterfaceipconfiguration) | false | A list of IPConfigurations of the network interface. |
|macAddress | String | false | The MAC address of the network interface. |
|networkSecurityGroup | [NetworkSecurityGroup](#networksecuritygroup) | false | The reference of the NetworkSecurityGroup resource. |
|primary | Boolean | false | Gets whether this is a primary network interface on a virtual machine. |
|provisioningState | String | false | The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the network interface resource. |
|tapConfigurations | [NetworkInterfaceTapConfiguration](#networkinterfacetapconfiguration) | false | A list of TapConfigurations of the network interface. |
|virtualMachine | [SubResource](#subresource) | false | The reference of a virtual machine. |
        
## NetworkInterfaceDnsSettings

DNS settings of a network interface.

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
        
        
        
## NetworkSecurityGroup

NetworkSecurityGroup resource.

```puppet
$azure_network_security_group = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_network_security_group_properties_format
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [NetworkSecurityGroupPropertiesFormat](#networksecuritygrouppropertiesformat) | false | Properties of the network security group |
|tags | Hash | false | Resource tags. |
        
## NetworkSecurityGroupPropertiesFormat

Network Security Group resource.

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

Network security rule.

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

Security rule resource.

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
        
        
        
        
        
        
## NetworkInterfaceTapConfiguration

Tap configuration in a Network Interface

```puppet
$azure_network_interface_tap_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_network_interface_tap_configuration_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [NetworkInterfaceTapConfigurationPropertiesFormat](#networkinterfacetapconfigurationpropertiesformat) | false | Properties of the Virtual Network Tap configuration |
        
## NetworkInterfaceTapConfigurationPropertiesFormat

Properties of Virtual Network Tap configuration.

```puppet
$azure_network_interface_tap_configuration_properties_format = {
  virtualNetworkTap => $azure_virtual_network_tap
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|virtualNetworkTap | [VirtualNetworkTap](#virtualnetworktap) | false | The reference of the Virtual Network Tap resource. |
        
## VirtualNetworkTap

Virtual Network Tap resource

```puppet
$azure_virtual_network_tap = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_virtual_network_tap_properties_format
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [VirtualNetworkTapPropertiesFormat](#virtualnetworktappropertiesformat) | false | Virtual Network Tap Properties. |
|tags | Hash | false | Resource tags. |
        
## VirtualNetworkTapPropertiesFormat

Virtual Network Tap properties.

```puppet
$azure_virtual_network_tap_properties_format = {
  destinationLoadBalancerFrontEndIPConfiguration => $azure_frontend_ip_configuration
  destinationNetworkInterfaceIPConfiguration => $azure_network_interface_ip_configuration
  destinationPort => "1234 (optional)",
  networkInterfaceTapConfigurations => $azure_network_interface_tap_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|destinationLoadBalancerFrontEndIPConfiguration | [FrontendIPConfiguration](#frontendipconfiguration) | false | The reference to the private IP address on the internal Load Balancer that will receive the tap |
|destinationNetworkInterfaceIPConfiguration | [NetworkInterfaceIPConfiguration](#networkinterfaceipconfiguration) | false | The reference to the private IP Address of the collector nic that will receive the tap |
|destinationPort | Integer | false | The VXLAN destination port that will receive the tapped traffic. |
|networkInterfaceTapConfigurations | [NetworkInterfaceTapConfiguration](#networkinterfacetapconfiguration) | false | Specifies the list of resource IDs for the network interface IP configuration that needs to be tapped. |
        
## FrontendIPConfiguration

Frontend IP address of the load balancer.

```puppet
$azure_frontend_ip_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_frontend_ip_configuration_properties_format
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [FrontendIPConfigurationPropertiesFormat](#frontendipconfigurationpropertiesformat) | false | Properties of the load balancer probe. |
|zones | Array | false | A list of availability zones denoting the IP allocated for the resource needs to come from. |
        
## FrontendIPConfigurationPropertiesFormat

Properties of Frontend IP Configuration of the load balancer.

```puppet
$azure_frontend_ip_configuration_properties_format = {
  inboundNatPools => $azure_sub_resource
  inboundNatRules => $azure_sub_resource
  loadBalancingRules => $azure_sub_resource
  outboundRules => $azure_sub_resource
  privateIPAddress => "privateIPAddress (optional)",
  privateIPAllocationMethod => "privateIPAllocationMethod (optional)",
  provisioningState => "provisioningState (optional)",
  publicIPAddress => $azure_public_ip_address
  publicIPPrefix => $azure_sub_resource
  subnet => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|inboundNatPools | [SubResource](#subresource) | false | Read only. Inbound pools URIs that use this frontend IP. |
|inboundNatRules | [SubResource](#subresource) | false | Read only. Inbound rules URIs that use this frontend IP. |
|loadBalancingRules | [SubResource](#subresource) | false | Gets load balancing rules URIs that use this frontend IP. |
|outboundRules | [SubResource](#subresource) | false | Read only. Outbound rules URIs that use this frontend IP. |
|privateIPAddress | String | false | The private IP address of the IP configuration. |
|privateIPAllocationMethod | String | false | The Private IP allocation method. Possible values are: 'Static' and 'Dynamic'. |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddress | [PublicIPAddress](#publicipaddress) | false | The reference of the Public IP resource. |
|publicIPPrefix | [SubResource](#subresource) | false | The reference of the Public IP Prefix resource. |
|subnet | [Subnet](#subnet) | false | The reference of the subnet resource. |
        
        
        
        
        
        
        
        
        
        
        
        
## IPConfigurationProfile

IP configuration profile child resource.

```puppet
$azure_ip_configuration_profile = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_ip_configuration_profile_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource. This name can be used to access the resource. |
|properties | [IPConfigurationProfilePropertiesFormat](#ipconfigurationprofilepropertiesformat) | false | Properties of the IP configuration profile. |
        
## IPConfigurationProfilePropertiesFormat

IP configruation profile properties.

```puppet
$azure_ip_configuration_profile_properties_format = {
  subnet => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|subnet | [Subnet](#subnet) | false | The reference of the subnet resource to create a contatainer network interface ip configruation. |
        
        
        
        
## ResourceNavigationLink

ResourceNavigationLink resource.

```puppet
$azure_resource_navigation_link = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_resource_navigation_link_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ResourceNavigationLinkFormat](#resourcenavigationlinkformat) | false | Resource navigation link properties format. |
        
## ResourceNavigationLinkFormat

Properties of ResourceNavigationLink.

```puppet
$azure_resource_navigation_link_format = {
  link => "link (optional)",
  linkedResourceType => "linkedResourceType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|link | String | false | Link to the external resource |
|linkedResourceType | String | false | Resource type of the linked resource. |
        
## RouteTable

Route table resource.

```puppet
$azure_route_table = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_route_table_properties_format
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [RouteTablePropertiesFormat](#routetablepropertiesformat) | false | Properties of the route table. |
|tags | Hash | false | Resource tags. |
        
## RouteTablePropertiesFormat

Route Table resource

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

Route resource

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

Route resource

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
        
        
## ServiceAssociationLink

ServiceAssociationLink resource.

```puppet
$azure_service_association_link = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_service_association_link_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ServiceAssociationLinkPropertiesFormat](#serviceassociationlinkpropertiesformat) | false | Resource navigation link properties format. |
        
## ServiceAssociationLinkPropertiesFormat

Properties of ServiceAssociationLink.

```puppet
$azure_service_association_link_properties_format = {
  link => "link (optional)",
  linkedResourceType => "linkedResourceType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|link | String | false | Link to the external resource. |
|linkedResourceType | String | false | Resource type of the linked resource. |
        
## ServiceEndpointPolicy

Service End point policy resource.

```puppet
$azure_service_endpoint_policy = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_service_endpoint_policy_properties_format
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [ServiceEndpointPolicyPropertiesFormat](#serviceendpointpolicypropertiesformat) | false | Properties of the service end point policy |
|tags | Hash | false | Resource tags. |
        
## ServiceEndpointPolicyPropertiesFormat

Service Endpoint Policy resource.

```puppet
$azure_service_endpoint_policy_properties_format = {
  serviceEndpointPolicyDefinitions => $azure_service_endpoint_policy_definition
  subnets => $azure_subnet
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|serviceEndpointPolicyDefinitions | [ServiceEndpointPolicyDefinition](#serviceendpointpolicydefinition) | false | A collection of service endpoint policy definitions of the service endpoint policy. |
|subnets | [Subnet](#subnet) | false | A collection of references to subnets. |
        
## ServiceEndpointPolicyDefinition

Service Endpoint policy definitions.

```puppet
$azure_service_endpoint_policy_definition = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_service_endpoint_policy_definition_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ServiceEndpointPolicyDefinitionPropertiesFormat](#serviceendpointpolicydefinitionpropertiesformat) | false | Properties of the service endpoint policy definition |
        
## ServiceEndpointPolicyDefinitionPropertiesFormat

Service Endpoint policy definition resource.

```puppet
$azure_service_endpoint_policy_definition_properties_format = {
  description => "description (optional)",
  service => "service (optional)",
  serviceResources => "serviceResources (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | A description for this rule. Restricted to 140 chars. |
|service | String | false | service endpoint name. |
|serviceResources | Array | false | A list of service resources. |
        
        
## ServiceEndpointPropertiesFormat

The service endpoint properties.

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

Contains the IpTag associated with the object

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

SKU of a public IP address

```puppet
$azure_public_ip_address_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of a public IP address SKU. |
        
        
        
## ApplicationGatewayBackendHttpSettings

Backend address pool settings of an application gateway.

```puppet
$azure_application_gateway_backend_http_settings = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_backend_http_settings_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the backend http settings that is unique within an Application Gateway. |
|properties | [ApplicationGatewayBackendHttpSettingsPropertiesFormat](#applicationgatewaybackendhttpsettingspropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayBackendHttpSettingsPropertiesFormat

Properties of Backend address pool settings of an application gateway.

```puppet
$azure_application_gateway_backend_http_settings_properties_format = {
  affinityCookieName => "affinityCookieName (optional)",
  authenticationCertificates => $azure_sub_resource
  connectionDraining => $azure_application_gateway_connection_draining
  cookieBasedAffinity => "cookieBasedAffinity (optional)",
  hostName => "hostName (optional)",
  path => "path (optional)",
  pickHostNameFromBackendAddress => "pickHostNameFromBackendAddress (optional)",
  port => "1234 (optional)",
  probe => $azure_sub_resource
  probeEnabled => "probeEnabled (optional)",
  protocol => "protocol (optional)",
  provisioningState => "provisioningState (optional)",
  requestTimeout => "1234 (optional)",
  trustedRootCertificates => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|affinityCookieName | String | false | Cookie name to use for the affinity cookie. |
|authenticationCertificates | [SubResource](#subresource) | false | Array of references to application gateway authentication certificates. |
|connectionDraining | [ApplicationGatewayConnectionDraining](#applicationgatewayconnectiondraining) | false | Connection draining of the backend http settings resource. |
|cookieBasedAffinity | String | false | Cookie based affinity. |
|hostName | String | false | Host header to be sent to the backend servers. |
|path | String | false | Path which should be used as a prefix for all HTTP requests. Null means no path will be prefixed. Default value is null. |
|pickHostNameFromBackendAddress | Boolean | false | Whether to pick host header should be picked from the host name of the backend server. Default value is false. |
|port | Integer | false | The destination port on the backend. |
|probe | [SubResource](#subresource) | false | Probe resource of an application gateway. |
|probeEnabled | Boolean | false | Whether the probe is enabled. Default value is false. |
|protocol | String | false | The protocol used to communicate with the backend. Possible values are 'Http' and 'Https'. |
|provisioningState | String | false | Provisioning state of the backend http settings resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|requestTimeout | Integer | false | Request timeout in seconds. Application Gateway will fail the request if response is not received within RequestTimeout. Acceptable values are from 1 second to 86400 seconds. |
|trustedRootCertificates | [SubResource](#subresource) | false | Array of references to application gateway trusted root certificates. |
        
        
## ApplicationGatewayConnectionDraining

Connection draining allows open connections to a backend server to be active for a specified time after the backend server got removed from the configuration.

```puppet
$azure_application_gateway_connection_draining = {
  drainTimeoutInSec => "1234",
  enabled => "enabled",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|drainTimeoutInSec | Integer | true | The number of seconds connection draining is active. Acceptable values are from 1 second to 3600 seconds. |
|enabled | Boolean | true | Whether connection draining is enabled or not. |
        
        
        
## ApplicationGatewayCustomError

Customer error of an application gateway.

```puppet
$azure_application_gateway_custom_error = {
  customErrorPageUrl => "customErrorPageUrl (optional)",
  statusCode => "statusCode (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customErrorPageUrl | String | false | Error page URL of the application gateway customer error. |
|statusCode | String | false | Status code of the application gateway customer error. |
        
## ApplicationGatewayFrontendIPConfiguration

Frontend IP configuration of an application gateway.

```puppet
$azure_application_gateway_frontend_ip_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_frontend_ip_configuration_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the frontend IP configuration that is unique within an Application Gateway. |
|properties | [ApplicationGatewayFrontendIPConfigurationPropertiesFormat](#applicationgatewayfrontendipconfigurationpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayFrontendIPConfigurationPropertiesFormat

Properties of Frontend IP configuration of an application gateway.

```puppet
$azure_application_gateway_frontend_ip_configuration_properties_format = {
  privateIPAddress => "privateIPAddress (optional)",
  privateIPAllocationMethod => "privateIPAllocationMethod (optional)",
  provisioningState => "provisioningState (optional)",
  publicIPAddress => $azure_sub_resource
  subnet => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|privateIPAddress | String | false | PrivateIPAddress of the network interface IP Configuration. |
|privateIPAllocationMethod | String | false | PrivateIP allocation method. |
|provisioningState | String | false | Provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddress | [SubResource](#subresource) | false | Reference of the PublicIP resource. |
|subnet | [SubResource](#subresource) | false | Reference of the subnet resource. |
        
        
        
## ApplicationGatewayFrontendPort

Frontend port of an application gateway.

```puppet
$azure_application_gateway_frontend_port = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_frontend_port_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the frontend port that is unique within an Application Gateway |
|properties | [ApplicationGatewayFrontendPortPropertiesFormat](#applicationgatewayfrontendportpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayFrontendPortPropertiesFormat

Properties of Frontend port of an application gateway.

```puppet
$azure_application_gateway_frontend_port_properties_format = {
  port => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|port | Integer | false | Frontend port |
|provisioningState | String | false | Provisioning state of the frontend port resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
## ApplicationGatewayIPConfiguration

IP configuration of an application gateway. Currently 1 public and 1 private IP configuration is allowed.

```puppet
$azure_application_gateway_ip_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_ip_configuration_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the IP configuration that is unique within an Application Gateway. |
|properties | [ApplicationGatewayIPConfigurationPropertiesFormat](#applicationgatewayipconfigurationpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayIPConfigurationPropertiesFormat

Properties of IP configuration of an application gateway.

```puppet
$azure_application_gateway_ip_configuration_properties_format = {
  provisioningState => "provisioningState (optional)",
  subnet => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | Provisioning state of the application gateway subnet resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|subnet | [SubResource](#subresource) | false | Reference of the subnet resource. A subnet from where application gateway gets its private address. |
        
        
## ApplicationGatewayHttpListener

Http listener of an application gateway.

```puppet
$azure_application_gateway_http_listener = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_http_listener_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the HTTP listener that is unique within an Application Gateway. |
|properties | [ApplicationGatewayHttpListenerPropertiesFormat](#applicationgatewayhttplistenerpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayHttpListenerPropertiesFormat

Properties of HTTP listener of an application gateway.

```puppet
$azure_application_gateway_http_listener_properties_format = {
  customErrorConfigurations => $azure_application_gateway_custom_error
  frontendIPConfiguration => $azure_sub_resource
  frontendPort => $azure_sub_resource
  hostName => "hostName (optional)",
  protocol => "protocol (optional)",
  provisioningState => "provisioningState (optional)",
  requireServerNameIndication => "requireServerNameIndication (optional)",
  sslCertificate => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customErrorConfigurations | [ApplicationGatewayCustomError](#applicationgatewaycustomerror) | false | Custom error configurations of the HTTP listener. |
|frontendIPConfiguration | [SubResource](#subresource) | false | Frontend IP configuration resource of an application gateway. |
|frontendPort | [SubResource](#subresource) | false | Frontend port resource of an application gateway. |
|hostName | String | false | Host name of HTTP listener. |
|protocol | String | false | Protocol of the HTTP listener. Possible values are 'Http' and 'Https'. |
|provisioningState | String | false | Provisioning state of the HTTP listener resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|requireServerNameIndication | Boolean | false | Applicable only if protocol is https. Enables SNI for multi-hosting. |
|sslCertificate | [SubResource](#subresource) | false | SSL certificate resource of an application gateway. |
        
        
        
        
        
## ApplicationGatewayProbe

Probe of the application gateway.

```puppet
$azure_application_gateway_probe = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_probe_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the probe that is unique within an Application Gateway. |
|properties | [ApplicationGatewayProbePropertiesFormat](#applicationgatewayprobepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayProbePropertiesFormat

Properties of probe of an application gateway.

```puppet
$azure_application_gateway_probe_properties_format = {
  host => "host (optional)",
  interval => "1234 (optional)",
  match => $azure_application_gateway_probe_health_response_match
  minServers => "1234 (optional)",
  path => "path (optional)",
  pickHostNameFromBackendHttpSettings => "pickHostNameFromBackendHttpSettings (optional)",
  protocol => "protocol (optional)",
  provisioningState => "provisioningState (optional)",
  timeout => "1234 (optional)",
  unhealthyThreshold => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|host | String | false | Host name to send the probe to. |
|interval | Integer | false | The probing interval in seconds. This is the time interval between two consecutive probes. Acceptable values are from 1 second to 86400 seconds. |
|match | [ApplicationGatewayProbeHealthResponseMatch](#applicationgatewayprobehealthresponsematch) | false | Criterion for classifying a healthy probe response. |
|minServers | Integer | false | Minimum number of servers that are always marked healthy. Default value is 0. |
|path | String | false | Relative path of probe. Valid path starts from '/'. Probe is sent to <Protocol>://<host>:<port><path> |
|pickHostNameFromBackendHttpSettings | Boolean | false | Whether the host header should be picked from the backend http settings. Default value is false. |
|protocol | String | false | The protocol used for the probe. Possible values are 'Http' and 'Https'. |
|provisioningState | String | false | Provisioning state of the backend http settings resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|timeout | Integer | false | the probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds. |
|unhealthyThreshold | Integer | false | The probe retry count. Backend server is marked down after consecutive probe failure count reaches UnhealthyThreshold. Acceptable values are from 1 second to 20. |
        
## ApplicationGatewayProbeHealthResponseMatch

Application gateway probe health response match

```puppet
$azure_application_gateway_probe_health_response_match = {
  body => "body (optional)",
  statusCodes => "statusCodes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|body | String | false | Body that must be contained in the health response. Default value is empty. |
|statusCodes | Array | false | Allowed ranges of healthy status codes. Default range of healthy status codes is 200-399. |
        
## ApplicationGatewayRedirectConfiguration

Redirect configuration of an application gateway.

```puppet
$azure_application_gateway_redirect_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_redirect_configuration_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the redirect configuration that is unique within an Application Gateway. |
|properties | [ApplicationGatewayRedirectConfigurationPropertiesFormat](#applicationgatewayredirectconfigurationpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayRedirectConfigurationPropertiesFormat

Properties of redirect configuration of the application gateway.

```puppet
$azure_application_gateway_redirect_configuration_properties_format = {
  includePath => "includePath (optional)",
  includeQueryString => "includeQueryString (optional)",
  pathRules => $azure_sub_resource
  redirectType => $azure_redirect_type_enum
  requestRoutingRules => $azure_sub_resource
  targetListener => $azure_sub_resource
  targetUrl => "targetUrl (optional)",
  urlPathMaps => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|includePath | Boolean | false | Include path in the redirected url. |
|includeQueryString | Boolean | false | Include query string in the redirected url. |
|pathRules | [SubResource](#subresource) | false | Path rules specifying redirect configuration. |
|redirectType | [RedirectTypeEnum](#redirecttypeenum) | false | Supported http redirection types - Permanent, Temporary, Found, SeeOther. |
|requestRoutingRules | [SubResource](#subresource) | false | Request routing specifying redirect configuration. |
|targetListener | [SubResource](#subresource) | false | Reference to a listener to redirect the request to. |
|targetUrl | String | false | Url to redirect the request to. |
|urlPathMaps | [SubResource](#subresource) | false | Url path maps specifying default redirect configuration. |
        
        
## RedirectTypeEnum



```puppet
$azure_redirect_type_enum = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
        
## ApplicationGatewayRequestRoutingRule

Request routing rule of an application gateway.

```puppet
$azure_application_gateway_request_routing_rule = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_request_routing_rule_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the request routing rule that is unique within an Application Gateway. |
|properties | [ApplicationGatewayRequestRoutingRulePropertiesFormat](#applicationgatewayrequestroutingrulepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayRequestRoutingRulePropertiesFormat

Properties of request routing rule of the application gateway.

```puppet
$azure_application_gateway_request_routing_rule_properties_format = {
  backendAddressPool => $azure_sub_resource
  backendHttpSettings => $azure_sub_resource
  httpListener => $azure_sub_resource
  provisioningState => "provisioningState (optional)",
  redirectConfiguration => $azure_sub_resource
  rewriteRuleSet => $azure_sub_resource
  ruleType => "ruleType (optional)",
  urlPathMap => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendAddressPool | [SubResource](#subresource) | false | Backend address pool resource of the application gateway.  |
|backendHttpSettings | [SubResource](#subresource) | false | Backend http settings resource of the application gateway. |
|httpListener | [SubResource](#subresource) | false | Http listener resource of the application gateway.  |
|provisioningState | String | false | Provisioning state of the request routing rule resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|redirectConfiguration | [SubResource](#subresource) | false | Redirect configuration resource of the application gateway. |
|rewriteRuleSet | [SubResource](#subresource) | false | Rewrite Rule Set resource in Basic rule of the application gateway. |
|ruleType | String | false | Rule type. |
|urlPathMap | [SubResource](#subresource) | false | URL path map resource of the application gateway. |
        
        
        
        
        
        
        
## ApplicationGatewayRewriteRuleSet

Rewrite rule set of an application gateway.

```puppet
$azure_application_gateway_rewrite_rule_set = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_rewrite_rule_set_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Name of the rewrite rule set that is unique within an Application Gateway. |
|properties | [ApplicationGatewayRewriteRuleSetPropertiesFormat](#applicationgatewayrewriterulesetpropertiesformat) | false |  |
        
## ApplicationGatewayRewriteRuleSetPropertiesFormat

Properties of rewrite rule set of the application gateway.

```puppet
$azure_application_gateway_rewrite_rule_set_properties_format = {
  rewriteRules => $azure_application_gateway_rewrite_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|rewriteRules | [ApplicationGatewayRewriteRule](#applicationgatewayrewriterule) | false | Rewrite rules in the rewrite rule set. |
        
## ApplicationGatewayRewriteRule

Rewrite rule of an application gateway.

```puppet
$azure_application_gateway_rewrite_rule = {
  actionSet => $azure_application_gateway_rewrite_rule_action_set
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actionSet | [ApplicationGatewayRewriteRuleActionSet](#applicationgatewayrewriteruleactionset) | false | Set of actions to be done as part of the rewrite Rule. |
|name | String | false | Name of the rewrite rule that is unique within an Application Gateway. |
        
## ApplicationGatewayRewriteRuleActionSet

Set of actions in the Rewrite Rule in Application Gateway.

```puppet
$azure_application_gateway_rewrite_rule_action_set = {
  requestHeaderConfigurations => $azure_application_gateway_header_configuration
  responseHeaderConfigurations => $azure_application_gateway_header_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|requestHeaderConfigurations | [ApplicationGatewayHeaderConfiguration](#applicationgatewayheaderconfiguration) | false | Request Header Actions in the Action Set |
|responseHeaderConfigurations | [ApplicationGatewayHeaderConfiguration](#applicationgatewayheaderconfiguration) | false | Response Header Actions in the Action Set |
        
## ApplicationGatewayHeaderConfiguration

Header configuration of the Actions set in Application Gateway.

```puppet
$azure_application_gateway_header_configuration = {
  headerName => "headerName (optional)",
  headerValue => "headerValue (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|headerName | String | false | Header name of the header configuration |
|headerValue | String | false | Header value of the header configuration |
        
        
## ApplicationGatewaySku

SKU of an application gateway

```puppet
$azure_application_gateway_sku = {
  capacity => "1234 (optional)",
  name => "name (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | Capacity (instance count) of an application gateway. |
|name | String | false | Name of an application gateway SKU. |
|tier | String | false | Tier of an application gateway. |
        
## ApplicationGatewaySslCertificate

SSL certificates of an application gateway.

```puppet
$azure_application_gateway_ssl_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_ssl_certificate_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the SSL certificate that is unique within an Application Gateway. |
|properties | [ApplicationGatewaySslCertificatePropertiesFormat](#applicationgatewaysslcertificatepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewaySslCertificatePropertiesFormat

Properties of SSL certificates of an application gateway.

```puppet
$azure_application_gateway_ssl_certificate_properties_format = {
  data => "data (optional)",
  keyVaultSecretId => "keyVaultSecretId (optional)",
  password => "password (optional)",
  provisioningState => "provisioningState (optional)",
  publicCertData => "publicCertData (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|data | String | false | Base-64 encoded pfx certificate. Only applicable in PUT Request. |
|keyVaultSecretId | String | false | Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault. |
|password | String | false | Password for the pfx file specified in data. Only applicable in PUT request. |
|provisioningState | String | false | Provisioning state of the SSL certificate resource Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicCertData | String | false | Base-64 encoded Public cert data corresponding to pfx specified in data. Only applicable in GET request. |
        
## ApplicationGatewaySslPolicy

Application Gateway Ssl policy.

```puppet
$azure_application_gateway_ssl_policy = {
  cipherSuites => $azure_cipher_suites_enum
  disabledSslProtocols => $azure_protocols_enum
  minProtocolVersion => $azure_protocols_enum
  policyName => $azure_policy_name_enum
  policyType => "policyType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cipherSuites | [CipherSuitesEnum](#ciphersuitesenum) | false | Ssl cipher suites to be enabled in the specified order to application gateway. |
|disabledSslProtocols | [ProtocolsEnum](#protocolsenum) | false | Ssl protocols to be disabled on application gateway. |
|minProtocolVersion | [ProtocolsEnum](#protocolsenum) | false | Minimum version of Ssl protocol to be supported on application gateway. |
|policyName | [PolicyNameEnum](#policynameenum) | false | Name of Ssl predefined policy |
|policyType | String | false | Type of Ssl Policy |
        
## CipherSuitesEnum

Ssl cipher suites enums.

```puppet
$azure_cipher_suites_enum = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ProtocolsEnum

Ssl protocol enums.

```puppet
$azure_protocols_enum = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## PolicyNameEnum

Ssl predefined policy name enums.

```puppet
$azure_policy_name_enum = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ApplicationGatewayTrustedRootCertificate

Trusted Root certificates of an application gateway.

```puppet
$azure_application_gateway_trusted_root_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_trusted_root_certificate_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the trusted root certificate that is unique within an Application Gateway. |
|properties | [ApplicationGatewayTrustedRootCertificatePropertiesFormat](#applicationgatewaytrustedrootcertificatepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayTrustedRootCertificatePropertiesFormat

Trusted Root certificates properties of an application gateway.

```puppet
$azure_application_gateway_trusted_root_certificate_properties_format = {
  data => "data (optional)",
  keyVaultSecretId => "keyVaultSecretId (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|data | String | false | Certificate public data. |
|keyVaultSecretId | String | false | Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault. |
|provisioningState | String | false | Provisioning state of the trusted root certificate resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
## ApplicationGatewayUrlPathMap

UrlPathMaps give a url path to the backend mapping information for PathBasedRouting.

```puppet
$azure_application_gateway_url_path_map = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_url_path_map_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the URL path map that is unique within an Application Gateway. |
|properties | [ApplicationGatewayUrlPathMapPropertiesFormat](#applicationgatewayurlpathmappropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayUrlPathMapPropertiesFormat

Properties of UrlPathMap of the application gateway.

```puppet
$azure_application_gateway_url_path_map_properties_format = {
  defaultBackendAddressPool => $azure_sub_resource
  defaultBackendHttpSettings => $azure_sub_resource
  defaultRedirectConfiguration => $azure_sub_resource
  defaultRewriteRuleSet => $azure_sub_resource
  pathRules => $azure_application_gateway_path_rule
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultBackendAddressPool | [SubResource](#subresource) | false | Default backend address pool resource of URL path map. |
|defaultBackendHttpSettings | [SubResource](#subresource) | false | Default backend http settings resource of URL path map. |
|defaultRedirectConfiguration | [SubResource](#subresource) | false | Default redirect configuration resource of URL path map. |
|defaultRewriteRuleSet | [SubResource](#subresource) | false | Default Rewrite rule set resource of URL path map. |
|pathRules | [ApplicationGatewayPathRule](#applicationgatewaypathrule) | false | Path rule of URL path map resource. |
|provisioningState | String | false | Provisioning state of the backend http settings resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
        
        
        
        
## ApplicationGatewayPathRule

Path rule of URL path map of an application gateway.

```puppet
$azure_application_gateway_path_rule = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_application_gateway_path_rule_properties_format
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Name of the path rule that is unique within an Application Gateway. |
|properties | [ApplicationGatewayPathRulePropertiesFormat](#applicationgatewaypathrulepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayPathRulePropertiesFormat

Properties of path rule of an application gateway.

```puppet
$azure_application_gateway_path_rule_properties_format = {
  backendAddressPool => $azure_sub_resource
  backendHttpSettings => $azure_sub_resource
  paths => "paths (optional)",
  provisioningState => "provisioningState (optional)",
  redirectConfiguration => $azure_sub_resource
  rewriteRuleSet => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendAddressPool | [SubResource](#subresource) | false | Backend address pool resource of URL path map path rule. |
|backendHttpSettings | [SubResource](#subresource) | false | Backend http settings resource of URL path map path rule. |
|paths | Array | false | Path rules of URL path map. |
|provisioningState | String | false | Path rule of URL path map resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|redirectConfiguration | [SubResource](#subresource) | false | Redirect configuration resource of URL path map path rule. |
|rewriteRuleSet | [SubResource](#subresource) | false | Rewrite rule set resource of URL path map path rule. |
        
        
        
        
        
## ApplicationGatewayWebApplicationFirewallConfiguration

Application gateway web application firewall configuration.

```puppet
$azure_application_gateway_web_application_firewall_configuration = {
  disabledRuleGroups => $azure_application_gateway_firewall_disabled_rule_group
  enabled => "enabled",
  exclusions => $azure_application_gateway_firewall_exclusion
  fileUploadLimitInMb => "1234 (optional)",
  firewallMode => "firewallMode",
  maxRequestBodySize => "1234 (optional)",
  maxRequestBodySizeInKb => "1234 (optional)",
  requestBodyCheck => "requestBodyCheck (optional)",
  ruleSetType => "ruleSetType",
  ruleSetVersion => "ruleSetVersion",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|disabledRuleGroups | [ApplicationGatewayFirewallDisabledRuleGroup](#applicationgatewayfirewalldisabledrulegroup) | false | The disabled rule groups. |
|enabled | Boolean | true | Whether the web application firewall is enabled or not. |
|exclusions | [ApplicationGatewayFirewallExclusion](#applicationgatewayfirewallexclusion) | false | The exclusion list. |
|fileUploadLimitInMb | Integer | false | Maxium file upload size in Mb for WAF. |
|firewallMode | String | true | Web application firewall mode. |
|maxRequestBodySize | Integer | false | Maxium request body size for WAF. |
|maxRequestBodySizeInKb | Integer | false | Maxium request body size in Kb for WAF. |
|requestBodyCheck | Boolean | false | Whether allow WAF to check request Body. |
|ruleSetType | String | true | The type of the web application firewall rule set. Possible values are: 'OWASP'. |
|ruleSetVersion | String | true | The version of the rule set type. |
        
## ApplicationGatewayFirewallDisabledRuleGroup

Allows to disable rules within a rule group or an entire rule group.

```puppet
$azure_application_gateway_firewall_disabled_rule_group = {
  ruleGroupName => "ruleGroupName",
  rules => "rules (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ruleGroupName | String | true | The name of the rule group that will be disabled. |
|rules | Array | false | The list of rules that will be disabled. If null, all rules of the rule group will be disabled. |
        
## ApplicationGatewayFirewallExclusion

Allow to exclude some variable satisfy the condition for the WAF check

```puppet
$azure_application_gateway_firewall_exclusion = {
  matchVariable => "matchVariable",
  selector => "selector",
  selectorMatchOperator => "selectorMatchOperator",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|matchVariable | String | true | The variable to be excluded. |
|selector | String | true | When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to. |
|selectorMatchOperator | String | true | When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationGateway

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Put|Creates or updates the specified application gateway.|ApplicationGateways_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/applicationGateways`|Get|Gets all the application gateways in a subscription.|ApplicationGateways_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Get|Gets the specified application gateway.|ApplicationGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways`|Get|Lists all application gateways in a resource group.|ApplicationGateways_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Put|Creates or updates the specified application gateway.|ApplicationGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Delete|Deletes the specified application gateway.|ApplicationGateways_Delete|
