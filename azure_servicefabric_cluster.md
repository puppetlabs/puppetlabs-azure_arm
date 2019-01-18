Document: "servicefabric"


Path: "/tmp/azure-rest-api-specs/specification/servicefabric/resource-manager/Microsoft.ServiceFabric/stable/2016-09-01/servicefabric.json")

## Cluster

The cluster resource

```puppet
azure_servicefabric_cluster {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_cluster_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the ServiceFabric resouce provider api |
|location | String | false | Resource location. |
|parameters | Hash | true | Put Request |
|properties | [ClusterProperties](#clusterproperties) | false |  |
|resource_group_name | String | true | The name of the resource group to which the resource belongs or get created |
|subscription_id | String | true | The customer subscription identifier |
|tags | Hash | false | Resource tags. |
        
## ClusterProperties

The cluster resource properties

```puppet
$azure_cluster_properties = {
  availableClusterVersions => $azure_cluster_version_details
  azureActiveDirectory => $azure_azure_active_directory
  certificate => $azure_certificate_description
  clientCertificateCommonNames => $azure_client_certificate_common_name
  clientCertificateThumbprints => $azure_client_certificate_thumbprint
  clusterCodeVersion => "clusterCodeVersion (optional)",
  diagnosticsStorageAccountConfig => $azure_diagnostics_storage_account_config
  fabricSettings => $azure_settings_section_description
  managementEndpoint => "managementEndpoint",
  nodeTypes => $azure_node_type_description
  reliabilityLevel => "reliabilityLevel (optional)",
  reverseProxyCertificate => $azure_certificate_description
  upgradeDescription => $azure_cluster_upgrade_policy
  upgradeMode => "upgradeMode (optional)",
  vmImage => "vmImage (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availableClusterVersions | [ClusterVersionDetails](#clusterversiondetails) | false | The available cluster code version which the cluster can upgrade to, note that you must choose upgradeMode to manual to upgrade to |
|azureActiveDirectory | [AzureActiveDirectory](#azureactivedirectory) | false | The settings to enable AAD authentication on the cluster |
|certificate | [CertificateDescription](#certificatedescription) | false | This primay certificate will be used as cluster node to node security, SSL certificate for cluster management endpoint and default admin client |
|clientCertificateCommonNames | [ClientCertificateCommonName](#clientcertificatecommonname) | false |  List of client certificates to whitelist based on common names |
|clientCertificateThumbprints | [ClientCertificateThumbprint](#clientcertificatethumbprint) | false | The client thumbprint details ,it is used for client access for cluster operation |
|clusterCodeVersion | String | false | The ServiceFabric code version running in your cluster |
|diagnosticsStorageAccountConfig | [DiagnosticsStorageAccountConfig](#diagnosticsstorageaccountconfig) | false | The storage diagnostics account configuration details |
|fabricSettings | [SettingsSectionDescription](#settingssectiondescription) | false | List of custom fabric settings to configure the cluster. |
|managementEndpoint | String | true | The http management endpoint of the cluster |
|nodeTypes | [NodeTypeDescription](#nodetypedescription) | true | The list of nodetypes that make up the cluster |
|reliabilityLevel | String | false | Cluster reliability level indicates replica set size of system service |
|reverseProxyCertificate | [CertificateDescription](#certificatedescription) | false | The server certificate used by reverse proxy |
|upgradeDescription | [ClusterUpgradePolicy](#clusterupgradepolicy) | false | The policy to use when upgrading the cluster. |
|upgradeMode | String | false | Cluster upgrade mode indicates if fabric upgrade is initiated automatically by the system or not |
|vmImage | String | false | The name of VM image VMSS has been configured with. Generic names such as Windows or Linux can be used. |
        
## ClusterVersionDetails

The detail of the ServiceFabric runtime version result

```puppet
$azure_cluster_version_details = {
  codeVersion => "codeVersion (optional)",
  environment => $azure_cluster_environment
  supportExpiryUtc => "supportExpiryUtc (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|codeVersion | String | false | The ServiceFabric runtime version of the cluster |
|environment | [ClusterEnvironment](#clusterenvironment) | false | Cluster operating system |
|supportExpiryUtc | String | false | The date of expiry of support of the version |
        
## ClusterEnvironment

Cluster operating system, the default will be Windows

```puppet
$azure_cluster_environment = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## AzureActiveDirectory

The settings to enable AAD authentication on the cluster

```puppet
$azure_azure_active_directory = {
  clientApplication => "clientApplication (optional)",
  clusterApplication => "clusterApplication (optional)",
  tenantId => "tenantId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientApplication | String | false | Azure active directory client application id |
|clusterApplication | String | false | Azure active directory cluster application id |
|tenantId | String | false | Azure active directory tenant id |
        
## CertificateDescription

Certificate details

```puppet
$azure_certificate_description = {
  thumbprint => "thumbprint",
  thumbprintSecondary => "thumbprintSecondary (optional)",
  x509StoreName => "x509StoreName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|thumbprint | String | true | Thumbprint of the primary certificate |
|thumbprintSecondary | String | false | Thumbprint of the secondary certificate |
|x509StoreName | String | false | The local certificate store location |
        
## ClientCertificateCommonName

Client certificate details using common name

```puppet
$azure_client_certificate_common_name = {
  certificateCommonName => "certificateCommonName",
  certificateIssuerThumbprint => "certificateIssuerThumbprint",
  isAdmin => "isAdmin",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateCommonName | String | true | Certificate common name to be granted access; be carefull using wild card common names |
|certificateIssuerThumbprint | String | true | Certificate issuer thumbprint |
|isAdmin | Boolean | true | Is this certificate used for admin access from the client, if false , it is used or query only access |
        
## ClientCertificateThumbprint

Client certificate details using thumbprint

```puppet
$azure_client_certificate_thumbprint = {
  certificateThumbprint => "certificateThumbprint",
  isAdmin => "isAdmin",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateThumbprint | String | true | Certificate thumbprint |
|isAdmin | Boolean | true | Is this certificate used for admin access from the client, if false, it is used or query only access |
        
## DiagnosticsStorageAccountConfig

Diagnostics storage account config

```puppet
$azure_diagnostics_storage_account_config = {
  blobEndpoint => "blobEndpoint",
  protectedAccountKeyName => "protectedAccountKeyName",
  queueEndpoint => "queueEndpoint",
  storageAccountName => "storageAccountName",
  tableEndpoint => "tableEndpoint",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|blobEndpoint | String | true | Diagnostics storage account blob endpoint |
|protectedAccountKeyName | String | true | Protected Diagnostics storage key name |
|queueEndpoint | String | true | Diagnostics storage account queue endpoint |
|storageAccountName | String | true | Diagnostics storage account name |
|tableEndpoint | String | true | Diagnostics storage account table endpoint |
        
## SettingsSectionDescription

ServiceFabric section settings

```puppet
$azure_settings_section_description = {
  name => "name",
  parameters => $azure_settings_parameter_description
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of settings section |
|parameters | [SettingsParameterDescription](#settingsparameterdescription) | true | Collection of settings in the section, each setting is a tuple consisting of setting name and value |
        
## SettingsParameterDescription

ServiceFabric settings under sections

```puppet
$azure_settings_parameter_description = {
  name => "name",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of settings property |
|value | String | true | The value of the property |
        
## NodeTypeDescription

Describes a node type in the cluster, each node type represents sub set of nodes in the cluster

```puppet
$azure_node_type_description = {
  applicationPorts => $azure_endpoint_range_description
  capacities => "capacities (optional)",
  clientConnectionEndpointPort => "1234",
  durabilityLevel => "durabilityLevel (optional)",
  ephemeralPorts => $azure_endpoint_range_description
  httpGatewayEndpointPort => "1234",
  isPrimary => "isPrimary",
  name => "name",
  placementProperties => "placementProperties (optional)",
  reverseProxyEndpointPort => "1234 (optional)",
  vmInstanceCount => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationPorts | [EndpointRangeDescription](#endpointrangedescription) | false | Ports used by applications |
|capacities | Hash | false | The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much of a resource a node has |
|clientConnectionEndpointPort | Integer | true | The TCP cluster management endpoint port |
|durabilityLevel | String | false | Nodetype durability Level |
|ephemeralPorts | [EndpointRangeDescription](#endpointrangedescription) | false | System assgined application ports |
|httpGatewayEndpointPort | Integer | true | The HTTP cluster management endpoint port |
|isPrimary | Boolean | true | Mark this as the primary node type |
|name | String | true | Name of the node type |
|placementProperties | Hash | false | The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run |
|reverseProxyEndpointPort | Integer | false | Endpoint used by reverse proxy |
|vmInstanceCount | Integer | true | The number of node instances in the node type |
        
## EndpointRangeDescription

Port range details

```puppet
$azure_endpoint_range_description = {
  endPort => "1234",
  startPort => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endPort | Integer | true | End port of a range of ports |
|startPort | Integer | true | Starting port of a range of ports |
        
        
        
## ClusterUpgradePolicy

Cluster upgrade policy

```puppet
$azure_cluster_upgrade_policy = {
  deltaHealthPolicy => $azure_cluster_upgrade_delta_health_policy
  forceRestart => "forceRestart (optional)",
  healthCheckRetryTimeout => "healthCheckRetryTimeout",
  healthCheckStableDuration => "healthCheckStableDuration",
  healthCheckWaitDuration => "healthCheckWaitDuration",
  healthPolicy => $azure_cluster_health_policy
  overrideUserUpgradePolicy => "overrideUserUpgradePolicy (optional)",
  upgradeDomainTimeout => "upgradeDomainTimeout",
  upgradeReplicaSetCheckTimeout => "upgradeReplicaSetCheckTimeout",
  upgradeTimeout => "upgradeTimeout",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|deltaHealthPolicy | [ClusterUpgradeDeltaHealthPolicy](#clusterupgradedeltahealthpolicy) | false | Delta health policy |
|forceRestart | Boolean | false | Force node to restart or not |
|healthCheckRetryTimeout | String | true | The length of time that health checks can fail continuously,it represents .Net TimeSpan |
|healthCheckStableDuration | String | true | The length of time that health checks must pass continuously,it represents .Net TimeSpan |
|healthCheckWaitDuration | String | true | The length of time to wait after completing an upgrade domain before performing health checks, it represents .Net TimeSpan |
|healthPolicy | [ClusterHealthPolicy](#clusterhealthpolicy) | true | Cluster health Policy |
|overrideUserUpgradePolicy | Boolean | false | Use the user defined upgrade policy or not |
|upgradeDomainTimeout | String | true | The timeout for any upgrade domain,it represents .Net TimeSpan |
|upgradeReplicaSetCheckTimeout | String | true | Timeout for replica set upgrade to complete,it represents .Net TimeSpan |
|upgradeTimeout | String | true | The upgrade timeout,it represents .Net TimeSpan |
        
## ClusterUpgradeDeltaHealthPolicy

Delta health policy for the cluster

```puppet
$azure_cluster_upgrade_delta_health_policy = {
  maxPercentDeltaUnhealthyApplications => "1234",
  maxPercentDeltaUnhealthyNodes => "1234",
  maxPercentUpgradeDomainDeltaUnhealthyNodes => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|maxPercentDeltaUnhealthyApplications | Integer | true | Additional unhealthy applications percentage |
|maxPercentDeltaUnhealthyNodes | Integer | true | Additional unhealthy nodes percentage |
|maxPercentUpgradeDomainDeltaUnhealthyNodes | Integer | true | Additional unhealthy nodes percentage per upgrade domain  |
        
## ClusterHealthPolicy

Defines a health policy used to evaluate the health of the cluster or of a cluster node.

```puppet
$azure_cluster_health_policy = {
  maxPercentUnhealthyApplications => "1234 (optional)",
  maxPercentUnhealthyNodes => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|maxPercentUnhealthyApplications | Integer | false | The maximum allowed percentage of unhealthy applications before reporting an error. For example, to allow 10% of applications to be unhealthy, this value would be 10.  |
|maxPercentUnhealthyNodes | Integer | false | The maximum allowed percentage of unhealthy nodes before reporting an error. For example, to allow 10% of nodes to be unhealthy, this value would be 10.  |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Cluster

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Put|Create cluster resource|Clusters_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ServiceFabric/clusters`|Get|List cluster resource|Clusters_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Get|Get cluster resource|Clusters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters`|Get|List cluster resource by resource group|Clusters_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Put|Create cluster resource|Clusters_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Delete|Delete cluster resource|Clusters_Delete|
