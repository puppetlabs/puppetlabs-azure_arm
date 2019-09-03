Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-07-10/service.json")

## RecoveryPlan

Recovery plan details.

```puppet
azure_recovery_plan {
  api_version => "api_version",
  input => "input",
  location => "location (optional)",
  properties => $azure_recovery_plan_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|input | Hash | true | Recovery Plan creation input. |
|location | String | false | Resource Location |
|properties | [RecoveryPlanProperties](#recoveryplanproperties) | false | The custom details. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## RecoveryPlanProperties

Recovery plan custom details.

```puppet
$azure_recovery_plan_properties = {
  allowedOperations => "allowedOperations (optional)",
  currentScenario => $azure_current_scenario_details
  currentScenarioStatus => "currentScenarioStatus (optional)",
  currentScenarioStatusDescription => "currentScenarioStatusDescription (optional)",
  failoverDeploymentModel => "failoverDeploymentModel (optional)",
  friendlyName => "friendlyName (optional)",
  groups => $azure_recovery_plan_group
  lastPlannedFailoverTime => "lastPlannedFailoverTime (optional)",
  lastTestFailoverTime => "lastTestFailoverTime (optional)",
  lastUnplannedFailoverTime => "lastUnplannedFailoverTime (optional)",
  primaryFabricFriendlyName => "primaryFabricFriendlyName (optional)",
  primaryFabricId => "primaryFabricId (optional)",
  recoveryFabricFriendlyName => "recoveryFabricFriendlyName (optional)",
  recoveryFabricId => "recoveryFabricId (optional)",
  replicationProviders => "replicationProviders (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowedOperations | Array | false | The list of allowed operations. |
|currentScenario | [CurrentScenarioDetails](#currentscenariodetails) | false | The current scenario details. |
|currentScenarioStatus | String | false | The recovery plan status. |
|currentScenarioStatusDescription | String | false | The recovery plan status description. |
|failoverDeploymentModel | String | false | The failover deployment model. |
|friendlyName | String | false | The friendly name. |
|groups | [RecoveryPlanGroup](#recoveryplangroup) | false | The recovery plan groups. |
|lastPlannedFailoverTime | String | false | The start time of the last planned failover. |
|lastTestFailoverTime | String | false | The start time of the last test failover. |
|lastUnplannedFailoverTime | String | false | The start time of the last unplanned failover. |
|primaryFabricFriendlyName | String | false | The primary fabric friendly name. |
|primaryFabricId | String | false | The primary fabric Id. |
|recoveryFabricFriendlyName | String | false | The recovery fabric friendly name. |
|recoveryFabricId | String | false | The recovery fabric Id. |
|replicationProviders | Array | false | The list of replication providers. |
        
## CurrentScenarioDetails

Current scenario details of the protected entity.

```puppet
$azure_current_scenario_details = {
  jobId => "jobId (optional)",
  scenarioName => "scenarioName (optional)",
  startTime => "startTime (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|jobId | String | false | ARM Id of the job being executed. |
|scenarioName | String | false | Scenario name. |
|startTime | String | false | Start time of the workflow. |
        
## RecoveryPlanGroup

Recovery plan group details.

```puppet
$azure_recovery_plan_group = {
  endGroupActions => $azure_recovery_plan_action
  groupType => "groupType",
  replicationProtectedItems => $azure_recovery_plan_protected_item
  startGroupActions => $azure_recovery_plan_action
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endGroupActions | [RecoveryPlanAction](#recoveryplanaction) | false | The end group actions. |
|groupType | String | true | The group type. |
|replicationProtectedItems | [RecoveryPlanProtectedItem](#recoveryplanprotecteditem) | false | The list of protected items. |
|startGroupActions | [RecoveryPlanAction](#recoveryplanaction) | false | The start group actions. |
        
## RecoveryPlanAction

Recovery plan action details.

```puppet
$azure_recovery_plan_action = {
  actionName => "actionName",
  customDetails => $azure_recovery_plan_action_details
  failoverDirections => "failoverDirections",
  failoverTypes => "failoverTypes",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actionName | String | true | The action name. |
|customDetails | [RecoveryPlanActionDetails](#recoveryplanactiondetails) | true | The custom details. |
|failoverDirections | Array | true | The list of failover directions. |
|failoverTypes | Array | true | The list of failover types. |
        
## RecoveryPlanActionDetails

Recovery plan action custom details.

```puppet
$azure_recovery_plan_action_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## RecoveryPlanProtectedItem

Recovery plan protected item.

```puppet
$azure_recovery_plan_protected_item = {
  id => "id (optional)",
  virtualMachineId => "virtualMachineId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The ARM Id of the recovery plan protected item. |
|virtualMachineId | String | false | The virtual machine Id. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RecoveryPlan

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationRecoveryPlans/%{recovery_plan_name}`|Put|The operation to create a recovery plan.|ReplicationRecoveryPlans_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationRecoveryPlans/%{recovery_plan_name}`|Get|Gets the details of the recovery plan.|ReplicationRecoveryPlans_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationRecoveryPlans`|Get|Lists the recovery plans in the vault.|ReplicationRecoveryPlans_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationRecoveryPlans/%{recovery_plan_name}`|Put|The operation to create a recovery plan.|ReplicationRecoveryPlans_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationRecoveryPlans/%{recovery_plan_name}`|Delete|Delete a recovery plan.|ReplicationRecoveryPlans_Delete|
