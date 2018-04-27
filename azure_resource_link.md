Document: "links"
Path: "/root/specs/specification/resources/resource-manager/Microsoft.Resources/stable/2016-09-01/links.json")

## ResourceLink

```puppet
azure_resource_link {
  api_version => "api_version",
  id => "id (optional)",
  link_id => "link_id",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_resource_link_properties
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|id | String | false | The fully qualified ID of the resource link. |
|link_id | String | true | The fully qualified ID of the resource link. Use the format, /subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/{provider-namespace}/{resource-type}/{resource-name}/Microsoft.Resources/links/{link-name}. For example, /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup/Microsoft.Web/sites/mySite/Microsoft.Resources/links/myLink |
|name | String | false | The name of the resource link. |
|parameters | Hash | true | Parameters for creating or updating a resource link. |
|properties | [ResourceLinkProperties](#resourcelinkproperties) | false | Properties for resource link. |
|subscription_id | String | true | The ID of the target subscription. |
        
## ResourceLinkProperties

```puppet
$azure_resource_link_properties = {
  notes => "notes (optional)",
  sourceId => "sourceId (optional)",
  targetId => "targetId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|notes | String | false | Notes about the resource link. |
|sourceId | String | false | The fully qualified ID of the source resource in the link.  |
|targetId | String | true | The fully qualified ID of the target resource in the link. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ResourceLink

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{link_id}`|Put|Creates or updates a resource link between the specified resources.|ResourceLinks_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Resources/links`|Get|Gets all the linked resources for the subscription.|ResourceLinks_ListAtSubscription|
|List - get one|`/%{link_id}`|Get|Gets a resource link with the specified ID.|ResourceLinks_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Resources/links`|Get|Gets all the linked resources for the subscription.|ResourceLinks_ListAtSubscription|
|Update|`/%{link_id}`|Put|Creates or updates a resource link between the specified resources.|ResourceLinks_CreateOrUpdate|
|Delete|`/%{link_id}`|Delete|Deletes a resource link with the specified ID.|ResourceLinks_Delete|