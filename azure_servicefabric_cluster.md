Document: "cluster"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/servicefabric/resource-manager/Microsoft.ServiceFabric/stable/2018-02-01/cluster.json")

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
|api_version | String | true | The version of the Service Fabric resource provider API. This is a required parameter and it's value must be '2018-02-01' for this specification. |
|location | String | false | Azure resource location. |
|parameters | Hash | true | The cluster resource. |
|properties | [ClusterProperties](#clusterproperties) | false | The cluster resource properties |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The customer subscription identifier. |
|tags | Hash | false | Azure resource tags. |
        
## ClusterProperties

Describes the cluster resource properties.

```puppet
$azure_cluster_properties = {
  addOnFeatures => $azure_add_on_features
  availableClusterVersions => $azure_cluster_version_details
  azureActiveDirectory => $azure_azure_active_directory
  certificate => $azure_certificate_description
  certificateCommonNames => $azure_server_certificate_common_names
  clientCertificateCommonNames => $azure_client_certificate_common_name
  clientCertificateThumbprints => $azure_client_certificate_thumbprint
  clusterCodeVersion => "clusterCodeVersion (optional)",
  clusterState => $azure_cluster_state
  diagnosticsStorageAccountConfig => $azure_diagnostics_storage_account_config
  fabricSettings => $azure_settings_section_description
  managementEndpoint => "managementEndpoint",
  nodeTypes => $azure_node_type_description
  reliabilityLevel => $azure_reliability_level
  reverseProxyCertificate => $azure_certificate_description
  reverseProxyCertificateCommonNames => $azure_server_certificate_common_names
  upgradeDescription => $azure_cluster_upgrade_policy
  upgradeMode => $azure_upgrade_mode
  vmImage => "vmImage (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addOnFeatures | [AddOnFeatures](#addonfeatures) | false | The list of add-on features to enable in the cluster. |
|availableClusterVersions | [ClusterVersionDetails](#clusterversiondetails) | false | The Service Fabric runtime versions available for this cluster. |
|azureActiveDirectory | [AzureActiveDirectory](#azureactivedirectory) | false | The AAD authentication settings of the cluster. |
|certificate | [CertificateDescription](#certificatedescription) | false | The certificate to use for securing the cluster. The certificate provided will be used for node to node security within the cluster, SSL certificate for cluster management endpoint and default admin client. |
|certificateCommonNames | [ServerCertificateCommonNames](#servercertificatecommonnames) | false | Describes a list of server certificates referenced by common name that are used to secure the cluster. |
|clientCertificateCommonNames | [ClientCertificateCommonName](#clientcertificatecommonname) | false | The list of client certificates referenced by common name that are allowed to manage the cluster. |
|clientCertificateThumbprints | [ClientCertificateThumbprint](#clientcertificatethumbprint) | false | The list of client certificates referenced by thumbprint that are allowed to manage the cluster. |
|clusterCodeVersion | String | false | The Service Fabric runtime version of the cluster. This property can only by set the user when **upgradeMode** is set to 'Manual'. To get list of available Service Fabric versions for new clusters use [ClusterVersion API](./ClusterVersion.md). To get the list of available version for existing clusters use **availableClusterVersions**. |
|clusterState | [ClusterState](#clusterstate) | false | The current state of the cluster.  - WaitingForNodes - Indicates that the cluster resource is created and the resource provider is waiting for Service Fabric VM extension to boot up and report to it.  - Deploying - Indicates that the Service Fabric runtime is being installed on the VMs. Cluster resource will be in this state until the cluster boots up and system services are up.  - BaselineUpgrade - Indicates that the cluster is upgrading to establishes the cluster version. This upgrade is automatically initiated when the cluster boots up for the first time.  - UpdatingUserConfiguration - Indicates that the cluster is being upgraded with the user provided configuration.  - UpdatingUserCertificate - Indicates that the cluster is being upgraded with the user provided certificate.  - UpdatingInfrastructure - Indicates that the cluster is being upgraded with the latest Service Fabric runtime version. This happens only when the **upgradeMode** is set to 'Automatic'.  - EnforcingClusterVersion - Indicates that cluster is on a different version than expected and the cluster is being upgraded to the expected version.  - UpgradeServiceUnreachable - Indicates that the system service in the cluster is no longer polling the Resource Provider. Clusters in this state cannot be managed by the Resource Provider.  - AutoScale - Indicates that the ReliabilityLevel of the cluster is being adjusted.  - Ready - Indicates that the cluster is in a stable state. |
|diagnosticsStorageAccountConfig | [DiagnosticsStorageAccountConfig](#diagnosticsstorageaccountconfig) | false | The storage account information for storing Service Fabric diagnostic logs. |
|fabricSettings | [SettingsSectionDescription](#settingssectiondescription) | false | The list of custom fabric settings to configure the cluster. |
|managementEndpoint | String | true | The http management endpoint of the cluster. |
|nodeTypes | [NodeTypeDescription](#nodetypedescription) | true | The list of node types in the cluster. |
|reliabilityLevel | [ReliabilityLevel](#reliabilitylevel) | false | The reliability level sets the replica set size of system services. Learn about [ReliabilityLevel](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-capacity).  - None - Run the System services with a target replica set count of 1. This should only be used for test clusters.  - Bronze - Run the System services with a target replica set count of 3. This should only be used for test clusters.  - Silver - Run the System services with a target replica set count of 5.  - Gold - Run the System services with a target replica set count of 7.  - Platinum - Run the System services with a target replica set count of 9. |
|reverseProxyCertificate | [CertificateDescription](#certificatedescription) | false | The server certificate used by reverse proxy. |
|reverseProxyCertificateCommonNames | [ServerCertificateCommonNames](#servercertificatecommonnames) | false | Describes a list of server certificates referenced by common name that are used to secure the cluster. |
|upgradeDescription | [ClusterUpgradePolicy](#clusterupgradepolicy) | false | The policy to use when upgrading the cluster. |
|upgradeMode | [UpgradeMode](#upgrademode) | false | The upgrade mode of the cluster when new Service Fabric runtime version is available.  - Automatic - The cluster will be automatically upgraded to the latest Service Fabric runtime version as soon as it is available.  - Manual - The cluster will not be automatically upgraded to the latest Service Fabric runtime version. The cluster is upgraded by setting the **clusterCodeVersion** property in the cluster resource. |
|vmImage | String | false | The VM image VMSS has been configured with. Generic names such as Windows or Linux can be used. |
        
## AddOnFeatures

Available cluster add-on features

```puppet
$azure_add_on_features = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ClusterVersionDetails

The detail of the Service Fabric runtime version result

```puppet
$azure_cluster_version_details = {
  codeVersion => "codeVersion (optional)",
  environment => $azure_cluster_environment
  supportExpiryUtc => "supportExpiryUtc (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|codeVersion | String | false | The Service Fabric runtime version of the cluster. |
|environment | [ClusterEnvironment](#clusterenvironment) | false | Indicates if this version is for Windows or Linux operating system. |
|supportExpiryUtc | String | false | The date of expiry of support of the version. |
        
## ClusterEnvironment

Cluster operating system, the default will be Windows

```puppet
$azure_cluster_environment = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## AzureActiveDirectory

The settings to enable AAD authentication on the cluster.

```puppet
$azure_azure_active_directory = {
  clientApplication => "clientApplication (optional)",
  clusterApplication => "clusterApplication (optional)",
  tenantId => "tenantId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientApplication | String | false | Azure active directory client application id. |
|clusterApplication | String | false | Azure active directory cluster application id. |
|tenantId | String | false | Azure active directory tenant id. |
        
## CertificateDescription

Describes the certificate details.

```puppet
$azure_certificate_description = {
  thumbprint => "thumbprint",
  thumbprintSecondary => "thumbprintSecondary (optional)",
  x509StoreName => $azure_store_name
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|thumbprint | String | true | Thumbprint of the primary certificate. |
|thumbprintSecondary | String | false | Thumbprint of the secondary certificate. |
|x509StoreName | [StoreName](#storename) | false | The local certificate store location. |
        
## StoreName

The local certificate store location.

```puppet
$azure_store_name = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ServerCertificateCommonNames

Describes a list of server certificates referenced by common name that are used to secure the cluster.

```puppet
$azure_server_certificate_common_names = {
  commonNames => $azure_server_certificate_common_name
  x509StoreName => $azure_store_name
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commonNames | [ServerCertificateCommonName](#servercertificatecommonname) | false | The list of server certificates referenced by common name that are used to secure the cluster. |
|x509StoreName | [StoreName](#storename) | false | The local certificate store location. |
        
## ServerCertificateCommonName

Describes the server certificate details using common name.

```puppet
$azure_server_certificate_common_name = {
  certificateCommonName => "certificateCommonName",
  certificateIssuerThumbprint => "certificateIssuerThumbprint",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateCommonName | String | true | The common name of the server certificate. |
|certificateIssuerThumbprint | String | true | The issuer thumbprint of the server certificate. |
        
        
## ClientCertificateCommonName

Describes the client certificate details using common name.

```puppet
$azure_client_certificate_common_name = {
  certificateCommonName => "certificateCommonName",
  certificateIssuerThumbprint => "certificateIssuerThumbprint",
  isAdmin => "isAdmin",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateCommonName | String | true | The common name of the client certificate. |
|certificateIssuerThumbprint | String | true | The issuer thumbprint of the client certificate. |
|isAdmin | Boolean | true | Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster. |
        
## ClientCertificateThumbprint

Describes the client certificate details using thumbprint.

```puppet
$azure_client_certificate_thumbprint = {
  certificateThumbprint => "certificateThumbprint",
  isAdmin => "isAdmin",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateThumbprint | String | true | The thumbprint of the client certificate. |
|isAdmin | Boolean | true | Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster. |
        
## ClusterState

The current state of the cluster.

  - WaitingForNodes - Indicates that the cluster resource is created and the resource provider is waiting for Service Fabric VM extension to boot up and report to it.
  - Deploying - Indicates that the Service Fabric runtime is being installed on the VMs. Cluster resource will be in this state until the cluster boots up and system services are up.
  - BaselineUpgrade - Indicates that the cluster is upgrading to establishes the cluster version. This upgrade is automatically initiated when the cluster boots up for the first time.
  - UpdatingUserConfiguration - Indicates that the cluster is being upgraded with the user provided configuration.
  - UpdatingUserCertificate - Indicates that the cluster is being upgraded with the user provided certificate.
  - UpdatingInfrastructure - Indicates that the cluster is being upgraded with the latest Service Fabric runtime version. This happens only when the **upgradeMode** is set to 'Automatic'.
  - EnforcingClusterVersion - Indicates that cluster is on a different version than expected and the cluster is being upgraded to the expected version.
  - UpgradeServiceUnreachable - Indicates that the system service in the cluster is no longer polling the Resource Provider. Clusters in this state cannot be managed by the Resource Provider.
  - AutoScale - Indicates that the ReliabilityLevel of the cluster is being adjusted.
  - Ready - Indicates that the cluster is in a stable state.


```puppet
$azure_cluster_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## DiagnosticsStorageAccountConfig

The storage account information for storing Service Fabric diagnostic logs.

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
|blobEndpoint | String | true | The blob endpoint of the azure storage account. |
|protectedAccountKeyName | String | true | The protected diagnostics storage key name. |
|queueEndpoint | String | true | The queue endpoint of the azure storage account. |
|storageAccountName | String | true | The Azure storage account name. |
|tableEndpoint | String | true | The table endpoint of the azure storage account. |
        
## SettingsSectionDescription

Describes a section in the fabric settings of the cluster.

```puppet
$azure_settings_section_description = {
  name => "name",
  parameters => $azure_settings_parameter_description
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The section name of the fabric settings. |
|parameters | [SettingsParameterDescription](#settingsparameterdescription) | true | The collection of parameters in the section. |
        
## SettingsParameterDescription

Describes a parameter in fabric settings of the cluster.

```puppet
$azure_settings_parameter_description = {
  name => "name",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The parameter name of fabric setting. |
|value | String | true | The parameter value of fabric setting. |
        
## NodeTypeDescription

Describes a node type in the cluster, each node type represents sub set of nodes in the cluster.

```puppet
$azure_node_type_description = {
  applicationPorts => $azure_endpoint_range_description
  capacities => "capacities (optional)",
  clientConnectionEndpointPort => "1234",
  durabilityLevel => $azure_durability_level
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
|applicationPorts | [EndpointRangeDescription](#endpointrangedescription) | false | The range of ports from which cluster assigned port to Service Fabric applications. |
|capacities | Hash | false | The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has. |
|clientConnectionEndpointPort | Integer | true | The TCP cluster management endpoint port. |
|durabilityLevel | [DurabilityLevel](#durabilitylevel) | false | The durability level of the node type. Learn about [DurabilityLevel](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-capacity).  - Bronze - No privileges. This is the default.  - Silver - The infrastructure jobs can be paused for a duration of 10 minutes per UD.  - Gold - The infrastructure jobs can be paused for a duration of 2 hours per UD. Gold durability can be enabled only on full node VM skus like D15_V2, G5 etc. |
|ephemeralPorts | [EndpointRangeDescription](#endpointrangedescription) | false | The range of empheral ports that nodes in this node type should be configured with. |
|httpGatewayEndpointPort | Integer | true | The HTTP cluster management endpoint port. |
|isPrimary | Boolean | true | The node type on which system services will run. Only one node type should be marked as primary. Primary node type cannot be deleted or changed for existing clusters. |
|name | String | true | The name of the node type. |
|placementProperties | Hash | false | The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run. |
|reverseProxyEndpointPort | Integer | false | The endpoint used by reverse proxy. |
|vmInstanceCount | Integer | true | The number of nodes in the node type. This count should match the capacity property in the corresponding VirtualMachineScaleSet resource. |
        
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
        
## DurabilityLevel

The durability level of the node type. Learn about [DurabilityLevel](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-capacity).

  - Bronze - No privileges. This is the default.
  - Silver - The infrastructure jobs can be paused for a duration of 10 minutes per UD.
  - Gold - The infrastructure jobs can be paused for a duration of 2 hours per UD. Gold durability can be enabled only on full node VM skus like D15_V2, G5 etc.


```puppet
$azure_durability_level = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## ReliabilityLevel

The reliability level sets the replica set size of system services. Learn about [ReliabilityLevel](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-capacity).

  - None - Run the System services with a target replica set count of 1. This should only be used for test clusters.
  - Bronze - Run the System services with a target replica set count of 3. This should only be used for test clusters.
  - Silver - Run the System services with a target replica set count of 5.
  - Gold - Run the System services with a target replica set count of 7.
  - Platinum - Run the System services with a target replica set count of 9.


```puppet
$azure_reliability_level = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
## ClusterUpgradePolicy

Describes the policy used when upgrading the cluster.

```puppet
$azure_cluster_upgrade_policy = {
  deltaHealthPolicy => $azure_cluster_upgrade_delta_health_policy
  forceRestart => "forceRestart (optional)",
  healthCheckRetryTimeout => "healthCheckRetryTimeout",
  healthCheckStableDuration => "healthCheckStableDuration",
  healthCheckWaitDuration => "healthCheckWaitDuration",
  healthPolicy => $azure_cluster_health_policy
  upgradeDomainTimeout => "upgradeDomainTimeout",
  upgradeReplicaSetCheckTimeout => "upgradeReplicaSetCheckTimeout",
  upgradeTimeout => "upgradeTimeout",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|deltaHealthPolicy | [ClusterUpgradeDeltaHealthPolicy](#clusterupgradedeltahealthpolicy) | false | The cluster delta health policy used when upgrading the cluster. |
|forceRestart | Boolean | false | If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data). |
|healthCheckRetryTimeout | String | true | The amount of time to retry health evaluation when the application or cluster is unhealthy before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format. |
|healthCheckStableDuration | String | true | The amount of time that the application or cluster must remain healthy before the upgrade proceeds to the next upgrade domain. The duration can be in either hh:mm:ss or in d.hh:mm:ss.ms format. |
|healthCheckWaitDuration | String | true | The length of time to wait after completing an upgrade domain before performing health checks. The duration can be in either hh:mm:ss or in d.hh:mm:ss.ms format. |
|healthPolicy | [ClusterHealthPolicy](#clusterhealthpolicy) | true | The cluster health policy used when upgrading the cluster. |
|upgradeDomainTimeout | String | true | The amount of time each upgrade domain has to complete before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format. |
|upgradeReplicaSetCheckTimeout | String | true | The maximum amount of time to block processing of an upgrade domain and revent loss of availability when there are unexpected issues. When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues. The timeout is reset at the start of each upgrade domain. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format. |
|upgradeTimeout | String | true | The amount of time the overall upgrade has to complete before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format. |
        
## ClusterUpgradeDeltaHealthPolicy

Describes the delta health policies for the cluster upgrade.

```puppet
$azure_cluster_upgrade_delta_health_policy = {
  applicationDeltaHealthPolicies => $azure_application_delta_health_policy_map
  maxPercentDeltaUnhealthyApplications => "1234",
  maxPercentDeltaUnhealthyNodes => "1234",
  maxPercentUpgradeDomainDeltaUnhealthyNodes => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationDeltaHealthPolicies | [ApplicationDeltaHealthPolicyMap](#applicationdeltahealthpolicymap) | false | Defines the application delta health policy map used to evaluate the health of an application or one of its child entities when upgrading the cluster. |
|maxPercentDeltaUnhealthyApplications | Integer | true | The maximum allowed percentage of applications health degradation allowed during cluster upgrades.The delta is measured between the state of the applications at the beginning of upgrade and the state of the applications at the time of the health evaluation.The check is performed after every upgrade domain upgrade completion to make sure the global state of the cluster is within tolerated limits. System services are not included in this. |
|maxPercentDeltaUnhealthyNodes | Integer | true | The maximum allowed percentage of nodes health degradation allowed during cluster upgrades.The delta is measured between the state of the nodes at the beginning of upgrade and the state of the nodes at the time of the health evaluation.The check is performed after every upgrade domain upgrade completion to make sure the global state of the cluster is within tolerated limits. |
|maxPercentUpgradeDomainDeltaUnhealthyNodes | Integer | true | The maximum allowed percentage of upgrade domain nodes health degradation allowed during cluster upgrades.The delta is measured between the state of the upgrade domain nodes at the beginning of upgrade and the state of the upgrade domain nodes at the time of the health evaluation.The check is performed after every upgrade domain upgrade completion for all completed upgrade domains to make sure the state of the upgrade domains is within tolerated limits. |
        
## ApplicationDeltaHealthPolicyMap

Defines a map that contains specific application delta health policies for different applications.
Each entry specifies as key the application name and as value an ApplicationDeltaHealthPolicy used to evaluate the application health when upgrading the cluster.
The application name should include the 'fabric:' URI scheme.
The map is empty by default.


```puppet
$azure_application_delta_health_policy_map = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ClusterHealthPolicy

Defines a health policy used to evaluate the health of the cluster or of a cluster node.


```puppet
$azure_cluster_health_policy = {
  applicationHealthPolicies => $azure_application_health_policy_map
  maxPercentUnhealthyApplications => "1234 (optional)",
  maxPercentUnhealthyNodes => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationHealthPolicies | [ApplicationHealthPolicyMap](#applicationhealthpolicymap) | false | Defines the application health policy map used to evaluate the health of an application or one of its children entities. |
|maxPercentUnhealthyApplications | Integer | false | The maximum allowed percentage of unhealthy applications before reporting an error. For example, to allow 10% of applications to be unhealthy, this value would be 10.The percentage represents the maximum tolerated percentage of applications that can be unhealthy before the cluster is considered in error.If the percentage is respected but there is at least one unhealthy application, the health is evaluated as Warning.This is calculated by dividing the number of unhealthy applications over the total number of application instances in the cluster, excluding applications of application types that are included in the ApplicationTypeHealthPolicyMap.The computation rounds up to tolerate one failure on small numbers of applications. Default percentage is zero. |
|maxPercentUnhealthyNodes | Integer | false | The maximum allowed percentage of unhealthy nodes before reporting an error. For example, to allow 10% of nodes to be unhealthy, this value would be 10.The percentage represents the maximum tolerated percentage of nodes that can be unhealthy before the cluster is considered in error.If the percentage is respected but there is at least one unhealthy node, the health is evaluated as Warning.The percentage is calculated by dividing the number of unhealthy nodes over the total number of nodes in the cluster.The computation rounds up to tolerate one failure on small numbers of nodes. Default percentage is zero.In large clusters, some nodes will always be down or out for repairs, so this percentage should be configured to tolerate that. |
        
## ApplicationHealthPolicyMap

Defines a map that contains specific application health policies for different applications.
Each entry specifies as key the application name and as value an ApplicationHealthPolicy used to evaluate the application health.
The application name should include the 'fabric:' URI scheme.
The map is empty by default.


```puppet
$azure_application_health_policy_map = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## UpgradeMode

The upgrade mode of the cluster when new Service Fabric runtime version is available.

  - Automatic - The cluster will be automatically upgraded to the latest Service Fabric runtime version as soon as it is available.
  - Manual - The cluster will not be automatically upgraded to the latest Service Fabric runtime version. The cluster is upgraded by setting the **clusterCodeVersion** property in the cluster resource.


```puppet
$azure_upgrade_mode = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Cluster

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Put|Create or update a Service Fabric cluster resource with the specified name.|Clusters_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ServiceFabric/clusters`|Get|Gets all Service Fabric cluster resources created or in the process of being created in the subscription.|Clusters_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Get|Get a Service Fabric cluster resource created or in the process of being created in the specified resource group.|Clusters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters`|Get|Gets all Service Fabric cluster resources created or in the process of being created in the resource group.|Clusters_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Put|Create or update a Service Fabric cluster resource with the specified name.|Clusters_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceFabric/clusters/%{cluster_name}`|Delete|Delete a Service Fabric cluster resource with the specified name.|Clusters_Delete|
