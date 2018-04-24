Document: "applicationGateway"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-02-01/applicationGateway.json")

## ApplicationGateway

```puppet
azure_application_gateway {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_application_gateway_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the create or update application gateway operation. |
|properties | [ApplicationGatewayPropertiesFormat](#applicationgatewaypropertiesformat) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## ApplicationGatewayPropertiesFormat

```puppet
$azure_application_gateway_properties_format = {
  authenticationCertificates => $azure_application_gateway_authentication_certificate
  backendAddressPools => $azure_application_gateway_backend_address_pool
  backendHttpSettingsCollection => $azure_application_gateway_backend_http_settings
  enableHttp2 => "enableHttp2 (optional)",
  frontendIPConfigurations => $azure_application_gateway_frontend_ip_configuration
  frontendPorts => $azure_application_gateway_frontend_port
  gatewayIPConfigurations => $azure_application_gateway_ip_configuration
  httpListeners => $azure_application_gateway_http_listener
  operationalState => "operationalState (optional)",
  probes => $azure_application_gateway_probe
  provisioningState => "provisioningState (optional)",
  redirectConfigurations => $azure_application_gateway_redirect_configuration
  requestRoutingRules => $azure_application_gateway_request_routing_rule
  resourceGuid => "resourceGuid (optional)",
  sku => $azure_application_gateway_sku
  sslCertificates => $azure_application_gateway_ssl_certificate
  sslPolicy => $azure_application_gateway_ssl_policy
  urlPathMaps => $azure_application_gateway_url_path_map
  webApplicationFirewallConfiguration => $azure_application_gateway_web_application_firewall_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authenticationCertificates | [ApplicationGatewayAuthenticationCertificate](#applicationgatewayauthenticationcertificate) | false | Authentication certificates of the application gateway resource. |
|backendAddressPools | [ApplicationGatewayBackendAddressPool](#applicationgatewaybackendaddresspool) | false | Backend address pool of the application gateway resource. |
|backendHttpSettingsCollection | [ApplicationGatewayBackendHttpSettings](#applicationgatewaybackendhttpsettings) | false | Backend http settings of the application gateway resource. |
|enableHttp2 | Boolean | false | Whether HTTP2 is enabled on the application gateway resource. |
|frontendIPConfigurations | [ApplicationGatewayFrontendIPConfiguration](#applicationgatewayfrontendipconfiguration) | false | Frontend IP addresses of the application gateway resource. |
|frontendPorts | [ApplicationGatewayFrontendPort](#applicationgatewayfrontendport) | false | Frontend ports of the application gateway resource. |
|gatewayIPConfigurations | [ApplicationGatewayIPConfiguration](#applicationgatewayipconfiguration) | false | Subnets of application the gateway resource. |
|httpListeners | [ApplicationGatewayHttpListener](#applicationgatewayhttplistener) | false | Http listeners of the application gateway resource. |
|operationalState | String | false | Operational state of the application gateway resource. |
|probes | [ApplicationGatewayProbe](#applicationgatewayprobe) | false | Probes of the application gateway resource. |
|provisioningState | String | false | Provisioning state of the application gateway resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|redirectConfigurations | [ApplicationGatewayRedirectConfiguration](#applicationgatewayredirectconfiguration) | false | Redirect configurations of the application gateway resource. |
|requestRoutingRules | [ApplicationGatewayRequestRoutingRule](#applicationgatewayrequestroutingrule) | false | Request routing rules of the application gateway resource. |
|resourceGuid | String | false | Resource GUID property of the application gateway resource. |
|sku | [ApplicationGatewaySku](#applicationgatewaysku) | false | SKU of the application gateway resource. |
|sslCertificates | [ApplicationGatewaySslCertificate](#applicationgatewaysslcertificate) | false | SSL certificates of the application gateway resource. |
|sslPolicy | [ApplicationGatewaySslPolicy](#applicationgatewaysslpolicy) | false | SSL policy of the application gateway resource. |
|urlPathMaps | [ApplicationGatewayUrlPathMap](#applicationgatewayurlpathmap) | false | URL path map of the application gateway resource. |
|webApplicationFirewallConfiguration | [ApplicationGatewayWebApplicationFirewallConfiguration](#applicationgatewaywebapplicationfirewallconfiguration) | false | Web application firewall configuration. |
        
## ApplicationGatewayAuthenticationCertificate

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayAuthenticationCertificatePropertiesFormat](#applicationgatewayauthenticationcertificatepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayAuthenticationCertificatePropertiesFormat

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
        
## PublicIPAddress

```puppet
$azure_public_ip_address = {
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_public_ip_address_properties_format
  sku => $azure_public_ip_address_sku
  tags => "tags (optional)",
  type => "type (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|properties | [PublicIPAddressPropertiesFormat](#publicipaddresspropertiesformat) | false | Public IP address properties. |
|sku | [PublicIPAddressSku](#publicipaddresssku) | false | The public IP address SKU. |
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
        
        
## ApplicationGatewayBackendHttpSettings

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayBackendHttpSettingsPropertiesFormat](#applicationgatewaybackendhttpsettingspropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayBackendHttpSettingsPropertiesFormat

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
|port | Integer | false | Port |
|probe | [SubResource](#subresource) | false | Probe resource of an application gateway. |
|probeEnabled | Boolean | false | Whether the probe is enabled. Default value is false. |
|protocol | String | false | Protocol. |
|provisioningState | String | false | Provisioning state of the backend http settings resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|requestTimeout | Integer | false | Request timeout in seconds. Application Gateway will fail the request if response is not received within RequestTimeout. Acceptable values are from 1 second to 86400 seconds. |
        
        
## ApplicationGatewayConnectionDraining

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
        
        
## ApplicationGatewayFrontendIPConfiguration

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayFrontendIPConfigurationPropertiesFormat](#applicationgatewayfrontendipconfigurationpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayFrontendIPConfigurationPropertiesFormat

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayFrontendPortPropertiesFormat](#applicationgatewayfrontendportpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayFrontendPortPropertiesFormat

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayIPConfigurationPropertiesFormat](#applicationgatewayipconfigurationpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayIPConfigurationPropertiesFormat

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayHttpListenerPropertiesFormat](#applicationgatewayhttplistenerpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayHttpListenerPropertiesFormat

```puppet
$azure_application_gateway_http_listener_properties_format = {
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
|frontendIPConfiguration | [SubResource](#subresource) | false | Frontend IP configuration resource of an application gateway. |
|frontendPort | [SubResource](#subresource) | false | Frontend port resource of an application gateway. |
|hostName | String | false | Host name of HTTP listener. |
|protocol | String | false | Protocol. |
|provisioningState | String | false | Provisioning state of the HTTP listener resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|requireServerNameIndication | Boolean | false | Applicable only if protocol is https. Enables SNI for multi-hosting. |
|sslCertificate | [SubResource](#subresource) | false | SSL certificate resource of an application gateway. |
        
        
        
        
## ApplicationGatewayProbe

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayProbePropertiesFormat](#applicationgatewayprobepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayProbePropertiesFormat

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
|protocol | String | false | Protocol. |
|provisioningState | String | false | Provisioning state of the backend http settings resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|timeout | Integer | false | the probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds. |
|unhealthyThreshold | Integer | false | The probe retry count. Backend server is marked down after consecutive probe failure count reaches UnhealthyThreshold. Acceptable values are from 1 second to 20. |
        
## ApplicationGatewayProbeHealthResponseMatch

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayRedirectConfigurationPropertiesFormat](#applicationgatewayredirectconfigurationpropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayRedirectConfigurationPropertiesFormat

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayRequestRoutingRulePropertiesFormat](#applicationgatewayrequestroutingrulepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayRequestRoutingRulePropertiesFormat

```puppet
$azure_application_gateway_request_routing_rule_properties_format = {
  backendAddressPool => $azure_sub_resource
  backendHttpSettings => $azure_sub_resource
  httpListener => $azure_sub_resource
  provisioningState => "provisioningState (optional)",
  redirectConfiguration => $azure_sub_resource
  ruleType => "ruleType (optional)",
  urlPathMap => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendAddressPool | [SubResource](#subresource) | false | Backend address pool resource of the application gateway.  |
|backendHttpSettings | [SubResource](#subresource) | false | Frontend port resource of the application gateway. |
|httpListener | [SubResource](#subresource) | false | Http listener resource of the application gateway.  |
|provisioningState | String | false | Provisioning state of the request routing rule resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|redirectConfiguration | [SubResource](#subresource) | false | Redirect configuration resource of the application gateway. |
|ruleType | String | false | Rule type. |
|urlPathMap | [SubResource](#subresource) | false | URL path map resource of the application gateway. |
        
        
        
        
        
        
## ApplicationGatewaySku

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewaySslCertificatePropertiesFormat](#applicationgatewaysslcertificatepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewaySslCertificatePropertiesFormat

```puppet
$azure_application_gateway_ssl_certificate_properties_format = {
  data => "data (optional)",
  password => "password (optional)",
  provisioningState => "provisioningState (optional)",
  publicCertData => "publicCertData (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|data | String | false | Base-64 encoded pfx certificate. Only applicable in PUT Request. |
|password | String | false | Password for the pfx file specified in data. Only applicable in PUT request. |
|provisioningState | String | false | Provisioning state of the SSL certificate resource Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicCertData | String | false | Base-64 encoded Public cert data corresponding to pfx specified in data. Only applicable in GET request. |
        
## ApplicationGatewaySslPolicy

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

```puppet
$azure_cipher_suites_enum = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ProtocolsEnum

```puppet
$azure_protocols_enum = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## PolicyNameEnum

```puppet
$azure_policy_name_enum = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ApplicationGatewayUrlPathMap

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayUrlPathMapPropertiesFormat](#applicationgatewayurlpathmappropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayUrlPathMapPropertiesFormat

```puppet
$azure_application_gateway_url_path_map_properties_format = {
  defaultBackendAddressPool => $azure_sub_resource
  defaultBackendHttpSettings => $azure_sub_resource
  defaultRedirectConfiguration => $azure_sub_resource
  pathRules => $azure_application_gateway_path_rule
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultBackendAddressPool | [SubResource](#subresource) | false | Default backend address pool resource of URL path map. |
|defaultBackendHttpSettings | [SubResource](#subresource) | false | Default backend http settings resource of URL path map. |
|defaultRedirectConfiguration | [SubResource](#subresource) | false | Default redirect configuration resource of URL path map. |
|pathRules | [ApplicationGatewayPathRule](#applicationgatewaypathrule) | false | Path rule of URL path map resource. |
|provisioningState | String | false | Provisioning state of the backend http settings resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
        
        
        
## ApplicationGatewayPathRule

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
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ApplicationGatewayPathRulePropertiesFormat](#applicationgatewaypathrulepropertiesformat) | false |  |
|type | String | false | Type of the resource. |
        
## ApplicationGatewayPathRulePropertiesFormat

```puppet
$azure_application_gateway_path_rule_properties_format = {
  backendAddressPool => $azure_sub_resource
  backendHttpSettings => $azure_sub_resource
  paths => "paths (optional)",
  provisioningState => "provisioningState (optional)",
  redirectConfiguration => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendAddressPool | [SubResource](#subresource) | false | Backend address pool resource of URL path map path rule. |
|backendHttpSettings | [SubResource](#subresource) | false | Backend http settings resource of URL path map path rule. |
|paths | Array | false | Path rules of URL path map. |
|provisioningState | String | false | Path rule of URL path map resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|redirectConfiguration | [SubResource](#subresource) | false | Redirect configuration resource of URL path map path rule. |
        
        
        
        
## ApplicationGatewayWebApplicationFirewallConfiguration

```puppet
$azure_application_gateway_web_application_firewall_configuration = {
  disabledRuleGroups => $azure_application_gateway_firewall_disabled_rule_group
  enabled => "enabled",
  firewallMode => "firewallMode",
  maxRequestBodySize => "1234 (optional)",
  requestBodyCheck => "requestBodyCheck (optional)",
  ruleSetType => "ruleSetType",
  ruleSetVersion => "ruleSetVersion",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|disabledRuleGroups | [ApplicationGatewayFirewallDisabledRuleGroup](#applicationgatewayfirewalldisabledrulegroup) | false | The disabled rule groups. |
|enabled | Boolean | true | Whether the web application firewall is enabled or not. |
|firewallMode | String | true | Web application firewall mode. |
|maxRequestBodySize | Integer | false | Maxium request body size for WAF. |
|requestBodyCheck | Boolean | false | Whether allow WAF to check request Body. |
|ruleSetType | String | true | The type of the web application firewall rule set. Possible values are: 'OWASP'. |
|ruleSetVersion | String | true | The version of the rule set type. |
        
## ApplicationGatewayFirewallDisabledRuleGroup

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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationGateway

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Put|Creates or updates the specified application gateway.|ApplicationGateways_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/applicationGateways`|Get|Gets all the application gateways in a subscription.|ApplicationGateways_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Get|Gets the specified application gateway.|ApplicationGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/applicationGateways`|Get|Gets all the application gateways in a subscription.|ApplicationGateways_ListAll|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Put|Creates or updates the specified application gateway.|ApplicationGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationGateways/%{application_gateway_name}`|Delete|Deletes the specified application gateway.|ApplicationGateways_Delete|