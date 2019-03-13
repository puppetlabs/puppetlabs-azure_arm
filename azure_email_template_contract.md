Document: "apimemailtemplate"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimemailtemplate.json")

## EmailTemplateContract

Email Template details.

```puppet
azure_email_template_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_email_template_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  template_name => "template_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Email Template update parameters. |
|properties | [EmailTemplateContractProperties](#emailtemplatecontractproperties) | false | Email Template entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|template_name | String | true | Email Template Name Identifier. |
        
## EmailTemplateContractProperties

Email Template Contract properties.

```puppet
$azure_email_template_contract_properties = {
  body => "body",
  description => "description (optional)",
  parameters => $azure_email_template_parameters_contract_properties
  subject => "subject",
  title => "title (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|body | String | true | Email Template Body. This should be a valid XDocument |
|description | String | false | Description of the Email Template. |
|parameters | [EmailTemplateParametersContractProperties](#emailtemplateparameterscontractproperties) | false | Email Template Parameter values. |
|subject | String | true | Subject of the Template. |
|title | String | false | Title of the Template. |
        
## EmailTemplateParametersContractProperties

Email Template Parameter contract.

```puppet
$azure_email_template_parameters_contract_properties = {
  description => "description (optional)",
  name => "name (optional)",
  title => "title (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Template parameter description. |
|name | String | false | Template parameter name. |
|title | String | false | Template parameter title. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EmailTemplateContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/templates/%{template_name}`|Put|Updates an Email Template.|EmailTemplate_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/templates/%{template_name}`|Get|Gets the details of the email template specified by its identifier.|EmailTemplate_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/templates`|Get|Lists a collection of properties defined within a service instance.|EmailTemplate_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/templates/%{template_name}`|Put|Updates an Email Template.|EmailTemplate_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/templates/%{template_name}`|Delete|Reset the Email Template to default template provided by the API Management service instance.|EmailTemplate_Delete|
