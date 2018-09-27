Document: "apimapis"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimapis.json")

## IssueCommentContract

Issue Comment Contract details.

```puppet
azure_issue_comment_contract {
  api_version => "api_version",
  api_id => "api_id",
  comment_id => "comment_id",
  if_match => "if_match",
  issue_id => "issue_id",
  parameters => "parameters",
  properties => $azure_issue_comment_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API identifier. Must be unique in the current API Management service instance. |
|comment_id | String | true | Comment identifier within an Issue. Must be unique in the current Issue. |
|if_match | String | true | ETag of the Issue Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|issue_id | String | true | Issue identifier. Must be unique in the current API Management service instance. |
|parameters | Hash | true | Create parameters. |
|properties | [IssueCommentContractProperties](#issuecommentcontractproperties) | false | Properties of the Issue Comment. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## IssueCommentContractProperties

Issue Comment contract Properties.

```puppet
$azure_issue_comment_contract_properties = {
  createdDate => "createdDate (optional)",
  text => "text",
  userId => "userId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|createdDate | String | false | Date and time when the comment was created. |
|text | String | true | Comment text. |
|userId | String | true | A resource identifier for the user who left the comment. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IssueCommentContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/comments/%{comment_id}`|Put|Creates a new Comment for the Issue in an API or updates an existing one.|ApiIssueComment_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/comments/%{comment_id}`|Get|Gets the details of the issue Comment for an API specified by its identifier.|ApiIssueComment_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/comments`|Get|Lists all comments for the Issue assosiated with the specified API.|ApiIssueComments_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/comments/%{comment_id}`|Put|Creates a new Comment for the Issue in an API or updates an existing one.|ApiIssueComment_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/comments/%{comment_id}`|Delete|Deletes the specified comment from an Issue.|ApiIssueComment_Delete|
