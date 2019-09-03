Document: "domainservices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/domainservices/resource-manager/Microsoft.AAD/stable/2017-06-01/domainservices.json")

## ReplicaSet

Replica Set.

```puppet
azure_replica_set {
  api_version => "api_version",
  domain_service_name => "domain_service_name",
  etag => "etag (optional)",
  location => "location (optional)",
  properties => $azure_replica_set_properties
  replica_set => "replicaSet",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|domain_service_name | String | true | The name of the domain service. |
|etag | String | false | Resource etag |
|location | String | false | Resource location |
|properties | [ReplicaSetProperties](#replicasetproperties) | false | ReplicaSet properties |
|replica_set | Hash | true | Properties supplied to the Create ReplicaSet operation. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## ReplicaSetProperties

Properties of the ReplicaSet.

```puppet
$azure_replica_set_properties = {
  healthAlerts => $azure_health_alert
  healthMonitors => $azure_health_monitor
  subnetId => "subnetId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|healthAlerts | [HealthAlert](#healthalert) | false | List of Domain Health Alerts |
|healthMonitors | [HealthMonitor](#healthmonitor) | false | List of Domain Health Monitors |
|subnetId | String | false | The name of the virtual network that ReplicaSets will be deployed on. /virtualNetwork/vnetName/subnets/subnetName. |
        
## HealthAlert

Health Alert Description

```puppet
$azure_health_alert = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## HealthMonitor

Health Monitor Description

```puppet
$azure_health_monitor = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ReplicaSet

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}/replicaSets/%{replica_set_name}`|Put|The Create ReplicaSet operation creates a new domain service with the specified parameters.|ReplicaSets_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}/replicaSets/%{replica_set_name}`|Get|The Get ReplicaSet operation retrieves a json representation of the ReplicaSet.|ReplicaSets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}/replicaSets`|Get|The List ReplicaSets in Resource Group operation lists all the domain services available under the given resource group.|ReplicaSets_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}/replicaSets/%{replica_set_name}`|Put|The Create ReplicaSet operation creates a new domain service with the specified parameters.|ReplicaSets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}/replicaSets/%{replica_set_name}`|Delete|The Delete ReplicaSet operation deletes an existing ReplicaSet.|ReplicaSets_Delete|
