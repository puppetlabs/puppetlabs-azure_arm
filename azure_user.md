Document: "graphrbac"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/graphrbac/data-plane/stable/1.6/graphrbac.json")

## User

Active Directory user information.

```puppet
azure_user {
  account_enabled => "accountEnabled (optional)",
  api_version => "api_version",
  display_name => "display_name (optional)",
  given_name => "given_name (optional)",
  immutable_id => "immutable_id (optional)",
  mail => "mail (optional)",
  mail_nickname => "mail_nickname (optional)",
  parameters => "parameters",
  sign_in_names => $azure_sign_in_name
  surname => "surname (optional)",
  tenant_id => "tenant_id",
  upn_or_object_id => "upn_or_object_id",
  usage_location => "usage_location (optional)",
  user_principal_name => "user_principal_name (optional)",
  user_type => "user_type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_enabled | Boolean | false | Whether the account is enabled. |
|api_version | String | true | Client API version. |
|display_name | String | false | The display name of the user. |
|given_name | String | false | The given name for the user. |
|immutable_id | String | false | This must be specified if you are using a federated domain for the user's userPrincipalName (UPN) property when creating a new user account. It is used to associate an on-premises Active Directory user account with their Azure AD user object. |
|mail | String | false | The primary email address of the user. |
|mail_nickname | String | false | The mail alias for the user. |
|parameters | Hash | true | Parameters to create a user. |
|sign_in_names | [SignInName](#signinname) | false | The sign-in names of the user. |
|surname | String | false | The user's surname (family name or last name). |
|tenant_id | String | true | The tenant ID. |
|upn_or_object_id | String | true | The object ID or principal name of the user to delete. |
|usage_location | String | false | A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries. Examples include: 'US', 'JP', and 'GB'. |
|user_principal_name | String | false | The principal name of the user. |
|user_type | String | false | A string value that can be used to classify user types in your directory, such as 'Member' and 'Guest'. |
        
## SignInName

Contains information about a sign-in name of a local account user in an Azure Active Directory B2C tenant.

```puppet
$azure_sign_in_name = {
  type => "type (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | A string value that can be used to classify user sign-in types in your directory, such as 'emailAddress' or 'userName'. |
|value | String | false | The sign-in used by the local account. Must be unique across the company/tenant. For example, 'johnc@example.com'. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the User

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{tenant_id}/users`|Post|Create a new user.|Users_Create|
|List - list all|``||||
|List - get one|`/%{tenant_id}/users/%{upn_or_object_id}`|Get|Gets user information from the directory.|Users_Get|
|List - get list using params|`/%{tenant_id}/users`|Get|Gets list of users for the current tenant.|Users_List|
|Update|`/%{tenant_id}/users`|Post|Create a new user.|Users_Create|
|Delete|`/%{tenant_id}/users/%{upn_or_object_id}`|Delete|Delete a user.|Users_Delete|
