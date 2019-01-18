Document: "ContentModerator"


Path: "/tmp/azure-rest-api-specs/specification/cognitiveservices/data-plane/ContentModerator/stable/v1.0/ContentModerator.json")

## TermList

Term List  Properties.

```puppet
azure_term_list {
  body => "body",
  content_type => "content_type",
  description => "description (optional)",
  id => "1234 (optional)",
  list_id => "list_id",
  metadata => "Metadata (optional)",
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|body | String | true | Schema of the body. |
|content_type | String | true | The content type. |
|description | String | false | Description for term list. |
|id | Integer | false | Term list Id. |
|list_id | String | true | List Id of the image list. |
|metadata | Hash | false | Term list metadata. |
|name | String | false | Term list name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the TermList

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/contentmoderator/lists/v1.0/termlists`|Post|Creates a Term List|ListManagementTermLists_Create|
|List - list all|``||||
|List - get one|`/contentmoderator/lists/v1.0/termlists/%{list_id}`|Get|Returns list Id details of the term list with list Id equal to list Id passed.|ListManagementTermLists_GetDetails|
|List - get list using params|``||||
|Update|`/contentmoderator/lists/v1.0/termlists/%{list_id}`|Put|Updates an Term List.|ListManagementTermLists_Update|
|Delete|`/contentmoderator/lists/v1.0/termlists/%{list_id}`|Delete|Deletes term list with the list Id equal to list Id passed.|ListManagementTermLists_Delete|
