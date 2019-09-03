Document: "containerregistry"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2019-05-01/containerregistry.json")

## Webhook

An object that represents a webhook for a container registry.

```puppet
azure_webhook {
  api_version => "api_version",
  location => "location (optional)",
  properties => $azure_webhook_properties
  registry_name => "registry_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  webhook_create_parameters => "webhookCreateParameters",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|location | String | false | The location of the resource. This cannot be changed after the resource is created. |
|properties | [WebhookProperties](#webhookproperties) | false | The properties of the webhook. |
|registry_name | String | true | The name of the container registry. |
|resource_group_name | String | true | The name of the resource group to which the container registry belongs. |
|subscription_id | String | true | The Microsoft Azure subscription ID. |
|tags | Hash | false | The tags of the resource. |
|webhook_create_parameters | Hash | true | The parameters for creating a webhook. |
        
## WebhookProperties

The properties of a webhook.

```puppet
$azure_webhook_properties = {
  actions => "actions",
  scope => "scope (optional)",
  status => "status (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actions | Array | true | The list of actions that trigger the webhook to post notifications. |
|scope | String | false | The scope of repositories where the event can be triggered. For example, 'foo:*' means events for all tags under repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is equivalent to 'foo:latest'. Empty means all events. |
|status | String | false | The status of the webhook at the time the operation was called. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Webhook

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/webhooks/%{webhook_name}`|Put|Creates a webhook for a container registry with the specified parameters.|Webhooks_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/webhooks/%{webhook_name}`|Get|Gets the properties of the specified webhook.|Webhooks_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/webhooks`|Get|Lists all the webhooks for the specified container registry.|Webhooks_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/webhooks/%{webhook_name}`|Put|Creates a webhook for a container registry with the specified parameters.|Webhooks_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/webhooks/%{webhook_name}`|Delete|Deletes a webhook from a container registry.|Webhooks_Delete|
