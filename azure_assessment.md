Document: "migrate"


Path: "/tmp/azure-rest-api-specs/specification/migrate/resource-manager/Microsoft.Migrate/stable/2018-02-02/migrate.json")

## Assessment

An assessment created for a group in the Migration project.

```puppet
azure_assessment {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  group_name => "group_name",
  project_name => "project_name",
  properties => $azure_assessment_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Standard request header. Used by service to identify API version used by client. |
|e_tag | String | false | For optimistic concurrency control. |
|group_name | String | true | Unique name of a group within a project. |
|project_name | String | true | Name of the Azure Migrate project. |
|properties | [AssessmentProperties](#assessmentproperties) | true | Properties of the assessment. |
|resource_group_name | String | true | Name of the Azure Resource Group that project is part of. |
|subscription_id | String | true | Azure Subscription Id in which project was created. |
        
## AssessmentProperties

Properties of an assessment.

```puppet
$azure_assessment_properties = {
  azureHybridUseBenefit => "azureHybridUseBenefit",
  azureLocation => "azureLocation",
  azureOfferCode => "azureOfferCode",
  azurePricingTier => "azurePricingTier",
  azureStorageRedundancy => "azureStorageRedundancy",
  currency => "currency",
  discountPercentage => "discountPercentage",
  percentile => "percentile",
  scalingFactor => "scalingFactor",
  sizingCriterion => "sizingCriterion",
  stage => "stage",
  timeRange => "timeRange",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|azureHybridUseBenefit | String | true | AHUB discount on windows virtual machines. |
|azureLocation | String | true | Target Azure location for which the machines should be assessed. These enums are the same as used by Compute API. |
|azureOfferCode | String | true | Offer code according to which cost estimation is done. |
|azurePricingTier | String | true | Pricing tier for Size evaluation. |
|azureStorageRedundancy | String | true | Storage Redundancy type offered by Azure. |
|currency | String | true | Currency to report prices in. |
|discountPercentage | Numeric | true | Custom discount percentage to be applied on final costs. Can be in the range [0, 100]. |
|percentile | String | true | Percentile of performance data used to recommend Azure size. |
|scalingFactor | Numeric | true | Scaling factor used over utilization data to add a performance buffer for new machines to be created in Azure. Min Value = 1.0, Max value = 1.9, Default = 1.3. |
|sizingCriterion | String | true | Assessment sizing criterion. |
|stage | String | true | User configurable setting that describes the status of the assessment. |
|timeRange | String | true | Time range of performance data used to recommend a size. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Assessment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}/assessments/%{assessment_name}`|Put|Create a new assessment with the given name and the specified settings. Since name of an assessment in a project is a unique identifier, if an assessment with the name provided already exists, then the existing assessment is updated.

Any PUT operation, resulting in either create or update on an assessment, will cause the assessment to go in a "InProgress" state. This will be indicated by the field 'computationState' on the Assessment object. During this time no other PUT operation will be allowed on that assessment object, nor will a Delete operation. Once the computation for the assessment is complete, the field 'computationState' will be updated to 'Ready', and then other PUT or DELETE operations can happen on the assessment.

When assessment is under computation, any PUT will lead to a 400 - Bad Request error.
|Assessments_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}/assessments/%{assessment_name}`|Get|Get an existing assessment with the specified name. Returns a json object of type 'assessment' as specified in Models section.|Assessments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}/assessments`|Get|Get all assessments created for the specified group.

Returns a json array of objects of type 'assessment' as specified in Models section.
|Assessments_ListByGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}/assessments/%{assessment_name}`|Put|Create a new assessment with the given name and the specified settings. Since name of an assessment in a project is a unique identifier, if an assessment with the name provided already exists, then the existing assessment is updated.

Any PUT operation, resulting in either create or update on an assessment, will cause the assessment to go in a "InProgress" state. This will be indicated by the field 'computationState' on the Assessment object. During this time no other PUT operation will be allowed on that assessment object, nor will a Delete operation. Once the computation for the assessment is complete, the field 'computationState' will be updated to 'Ready', and then other PUT or DELETE operations can happen on the assessment.

When assessment is under computation, any PUT will lead to a 400 - Bad Request error.
|Assessments_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}/assessments/%{assessment_name}`|Delete|Delete an assessment from the project. The machines remain in the assessment. Deleting a non-existent assessment results in a no-operation.

When an assessment is under computation, as indicated by the 'computationState' field, it cannot be deleted. Any such attempt will return a 400 - Bad Request.
|Assessments_Delete|
