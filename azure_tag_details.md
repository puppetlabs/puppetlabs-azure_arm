Document: "resources"


Path: "/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Resources/stable/2018-05-01/resources.json")

## TagDetails

Tag details.

```puppet
azure_tag_details {
  api_version => "api_version",
  count => $azure_tag_count
  subscription_id => "subscription_id",
  tag_name => "tag_name (optional)",
  values => $azure_tag_value
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|count | [TagCount](#tagcount) | false | The total number of resources that use the resource tag. When a tag is initially created and has no associated resources, the value is 0. |
|subscription_id | String | true | The ID of the target subscription. |
|tag_name | String | false | The tag name. |
|values | [TagValue](#tagvalue) | false | The list of tag values. |
        
## TagCount

Tag count.

```puppet
$azure_tag_count = {
  type => "type (optional)",
  value => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | Type of count. |
|value | Integer | false | Value of count. |
        
## TagValue

Tag information.

```puppet
$azure_tag_value = {
  count => $azure_tag_count
  tagValue => "tagValue (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | [TagCount](#tagcount) | false | The tag value count. |
|tagValue | String | false | The tag value. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the TagDetails

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/tagNames/%{tag_name}`|Put|The tag name can have a maximum of 512 characters and is case insensitive. Tag names created by Azure have prefixes of microsoft, azure, or windows. You cannot create tags with one of these prefixes.|Tags_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/tagNames`|Get|Gets the names and values of all resource tags that are defined in a subscription.|Tags_List|
|List - get one|``||||
|List - get list using params|`/subscriptions/%{subscription_id}/tagNames`|Get|Gets the names and values of all resource tags that are defined in a subscription.|Tags_List|
|Update|`/subscriptions/%{subscription_id}/tagNames/%{tag_name}`|Put|The tag name can have a maximum of 512 characters and is case insensitive. Tag names created by Azure have prefixes of microsoft, azure, or windows. You cannot create tags with one of these prefixes.|Tags_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/tagNames/%{tag_name}`|Delete|You must remove all values from a resource tag before you can delete it.|Tags_Delete|
