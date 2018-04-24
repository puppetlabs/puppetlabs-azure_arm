# Azure ARM

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
  * [Requirements](#requirements)
  * [Getting Azure credentials](#getting-azure-credentials)
  * [Installing the module](#installing-the-azure-module)
3. [Examples](#examples)
4. [Types and providers](#types-and-providers)

## Description

Microsoft Azure exposes a powerful API for creating and managing its Infrastructure as a Service platform. The Azure ARM (Azure Resource Manager) module allows you to drive that API using Puppet code. This allows you to use Puppet to create, stop, restart, and destroy Virtual Machines, and to manage other resources, meaning you can manage even more of your infrastructure as code.

The Puppet Azure ARM module is generated from the [REST API specifications for Microsoft Azure](https://github.com/Azure/azure-rest-api-specs/).  Please see also the [Azure documentation](https://docs.microsoft.com/azure/) (available in many languages).

Classic (ASM) Azure is not supported.

## Setup

### Requirements

#### Getting Azure credentials

To use this module, you need an Azure account. If you already have one, you can skip this section.

1.  Sign up for an [Azure account](https://azure.microsoft.com/free/).

2.  Install [the Azure CLI](https://azure.microsoft.com/documentation/articles/xplat-cli-install/), which is a cross-platform node.js-based tool that works on Windows and Linux. This is required to generate a certificate for the Puppet module, but it's also a useful way of interacting with Azure.

3.  [Register the CLI](https://azure.microsoft.com/documentation/articles/xplat-cli-connect/) with your Azure account.

    a. On the command line, enter:

    ``` shell
    azure account download
    azure account import <path to your .publishsettings file>
    ```

    b. After you've created the account, export the PEM certificate file using the following command:

    ``` shell
    azure account cert export
    ```

4.  Get a subscription ID using the `azure account list` command:

    ``` shell
    $ azure account list
    info:    Executing command account list
    data:    Name                    Id                                     Tenant Id  Current
    data:    ----------------------  -------------------------------------  ---------  -------
    data:    Pay-As-You-Go           xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx  undefined  true
    info:    account list command OK
    ```

To use the Resource Manager API instead, you need a service principal on the Active Directory. A quick way to create one for Puppet is [pendrica/azure-credentials](https://github.com/pendrica/azure-credentials). Its [puppet mode](https://github.com/pendrica/azure-credentials#puppet-style-output-note--v-displays-the-file-on-screen-after-creation) can create the `azure.conf` (see below) for you. Alternatively, the official documentation covers [creating this and retrieving the required credentials](https://azure.microsoft.com/en-us/documentation/articles/resource-group-authenticate-service-principal/).

#### Set environment variables

Set the following environment variables specific to your Azure installation (note the casing here).

```bash
export azure_subscription_id='your-subscription-id'
export azure_tenant_id='your-tenant-id'
export azure_client_id='your-client-id'
export azure_client_secret='your-client-secret'
```

#### Installing the module

Next, Install the module with:

puppet module install puppetlabs-azure_arm

## Examples 

The [examples](./examples/) folder contains [create_vm.pp](./examples/create_vm.pp), which creates 2 virtual machines.

Use the `puppet resource` command on existing resources to determine values to populate in custom manifests, following the create_vm.pp example.  For example:

```bash
puppet resource azure_application_gateway
```

## Types and providers

Here is a list of the types and providers with links to more detailed descriptions for each.

{{ range $key, $value := .DefinitionNames }}
* [{{$.Namespace | toSnakeCase}}_{{$value | toSnakeCase}}]({{$.Namespace | toSnakeCase}}_{{$value | toSnakeCase}}.md)
{{- end }}

## Release Notes

This is the initial release of the Puppet Azure ARM module. To create and destroy the resources created in your manifests, set the `ensure` parameter to `present` or `absent`. The `stopped` and `running` states are managed using the Microsoft Azure Portal [Azure Portal](https://portal.azure.com). This functionality is available in the next Puppet Azure ARM release.
