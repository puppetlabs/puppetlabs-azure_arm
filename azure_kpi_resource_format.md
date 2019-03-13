Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## KpiResourceFormat

The KPI resource format.

```puppet
azure_kpi_resource_format {
  api_version => "api_version",
  hub_name => "hub_name",
  kpi_name => "kpi_name",
  parameters => "parameters",
  properties => $azure_kpi_definition
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|hub_name | String | true | The name of the hub. |
|kpi_name | String | true | The name of the KPI. |
|parameters | Hash | true | Parameters supplied to the create/update KPI operation. |
|properties | [KpiDefinition](#kpidefinition) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## KpiDefinition

Defines the KPI Threshold limits.

```puppet
$azure_kpi_definition = {
  aliases => $azure_kpi_alias
  calculationWindow => "calculationWindow",
  calculationWindowFieldName => "calculationWindowFieldName (optional)",
  description => "description (optional)",
  displayName => "displayName (optional)",
  entityType => "entityType",
  entityTypeName => "entityTypeName",
  expression => "expression",
  extracts => $azure_kpi_extract
  filter => "filter (optional)",
  function => "function",
  groupBy => "groupBy (optional)",
  groupByMetadata => $azure_kpi_group_by_metadata
  participantProfilesMetadata => $azure_kpi_participant_profiles_metadata
  provisioningState => $azure_provisioning_state
  thresHolds => $azure_kpi_thresholds
  unit => "unit (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aliases | [KpiAlias](#kpialias) | false | The aliases. |
|calculationWindow | String | true | The calculation window. |
|calculationWindowFieldName | String | false | Name of calculation window field. |
|description | Hash | false | Localized description for the KPI. |
|displayName | Hash | false | Localized display name for the KPI. |
|entityType | String | true | The mapping entity type. |
|entityTypeName | String | true | The mapping entity name. |
|expression | String | true | The computation expression for the KPI. |
|extracts | [KpiExtract](#kpiextract) | false | The KPI extracts. |
|filter | String | false | The filter expression for the KPI. |
|function | String | true | The computation function for the KPI. |
|groupBy | Array | false | the group by properties for the KPI. |
|groupByMetadata | [KpiGroupByMetadata](#kpigroupbymetadata) | false | The KPI GroupByMetadata. |
|participantProfilesMetadata | [KpiParticipantProfilesMetadata](#kpiparticipantprofilesmetadata) | false | The participant profiles. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | Provisioning state. |
|thresHolds | [KpiThresholds](#kpithresholds) | false | The KPI thresholds. |
|unit | String | false | The unit of measurement for the KPI. |
        
## KpiAlias

The KPI alias.

```puppet
$azure_kpi_alias = {
  aliasName => "aliasName",
  expression => "expression",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aliasName | String | true | KPI alias name. |
|expression | String | true | The expression. |
        
## KpiExtract

The KPI extract.

```puppet
$azure_kpi_extract = {
  expression => "expression",
  extractName => "extractName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|expression | String | true | The expression. |
|extractName | String | true | KPI extract name. |
        
## KpiGroupByMetadata

The KPI GroupBy field metadata.

```puppet
$azure_kpi_group_by_metadata = {
  displayName => "displayName (optional)",
  fieldName => "fieldName (optional)",
  fieldType => "fieldType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|displayName | Hash | false | The display name. |
|fieldName | String | false | The name of the field. |
|fieldType | String | false | The type of the field. |
        
## KpiParticipantProfilesMetadata

The KPI participant profile metadata.

```puppet
$azure_kpi_participant_profiles_metadata = {
  typeName => "typeName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|typeName | String | true | Name of the type. |
        
## ProvisioningState

Provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## KpiThresholds

Defines the KPI Threshold limits.

```puppet
$azure_kpi_thresholds = {
  increasingKpi => "increasingKpi",
  lowerLimit => "lowerLimit",
  upperLimit => "upperLimit",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|increasingKpi | Boolean | true | Whether or not the KPI is an increasing KPI. |
|lowerLimit | Numeric | true | The lower threshold limit. |
|upperLimit | Numeric | true | The upper threshold limit. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the KpiResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/kpi/%{kpi_name}`|Put|Creates a KPI or updates an existing KPI in the hub.|Kpi_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/kpi/%{kpi_name}`|Get|Gets a KPI in the hub.|Kpi_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/kpi`|Get|Gets all the KPIs in the specified hub.|Kpi_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/kpi/%{kpi_name}`|Put|Creates a KPI or updates an existing KPI in the hub.|Kpi_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/kpi/%{kpi_name}`|Delete|Deletes a KPI in the hub.|Kpi_Delete|
