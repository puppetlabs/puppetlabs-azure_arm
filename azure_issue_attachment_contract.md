Document: "apimapis"


Path: "/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimapis.json")

## IssueAttachmentContract

Issue Attachment Contract details.

```puppet
azure_issue_attachment_contract {
  api_version => "api_version",
  api_id => "api_id",
  attachment_id => "attachment_id",
  if_match => "if_match",
  issue_id => "issue_id",
  parameters => "parameters",
  properties => $azure_issue_attachment_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API identifier. Must be unique in the current API Management service instance. |
|attachment_id | String | true | Attachment identifier within an Issue. Must be unique in the current Issue. |
|if_match | String | true | ETag of the Issue Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|issue_id | String | true | Issue identifier. Must be unique in the current API Management service instance. |
|parameters | Hash | true | Create parameters. |
|properties | [IssueAttachmentContractProperties](#issueattachmentcontractproperties) | false | Properties of the Issue Attachment. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## IssueAttachmentContractProperties

Issue Attachment contract Properties.

```puppet
$azure_issue_attachment_contract_properties = {
  content => "content",
  contentFormat => "contentFormat",
  title => "title",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|content | String | true | An HTTP link or Base64-encoded binary data. |
|contentFormat | String | true | Either 'link' if content is provided via an HTTP link or the MIME type of the Base64-encoded binary data provided in the 'content' property. |
|title | String | true | Filename by which the binary data will be saved. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IssueAttachmentContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/attachments/%{attachment_id}`|Put|Creates a new Attachment for the Issue in an API or updates an existing one.|ApiIssueAttachment_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/attachments/%{attachment_id}`|Get|Gets the details of the issue Attachment for an API specified by its identifier.|ApiIssueAttachment_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/attachments`|Get|Lists all comments for the Issue associated with the specified API.|ApiIssueAttachment_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/attachments/%{attachment_id}`|Put|Creates a new Attachment for the Issue in an API or updates an existing one.|ApiIssueAttachment_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/issues/%{issue_id}/attachments/%{attachment_id}`|Delete|Deletes the specified comment from an Issue.|ApiIssueAttachment_Delete|
