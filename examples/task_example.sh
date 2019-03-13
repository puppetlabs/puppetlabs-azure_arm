#!/bin/bash

subscriptionid="YOUR_SUBSCRIPTION_ID"
resourcegroup="ENTER THE RESOURCE GROUP"

#List Azure operations Example
bolt task run --nodes localhost azure_arm::resources_azure_operations_list api_version="2015-01-01"

#List VM by Location Example
#bolt task run --nodes localhost azure_arm::compute_azure_virtual_machines_list_by_location subscription_id=$subscriptionid location="uksouth" api_version="2018-06-01"

#StorageAccount Example
#bolt task run --nodes localhost azure_arm::storage_azure_storage_accounts_create resource_group_name=$resourcegroup subscription_id=$subscriptionid account_name="qastgname" sku="{'name': 'Standard_GRS'}" kind="StorageV2" location="eastus2" api_version="2018-07-01"

#Resource Level Deployment Examples
#bolt task run --nodes localhost azure_arm::resources_azure_deployments_create_or_update  subscription_id=$subscriptionid resource_group_name=$resourcegroup deployment_name="qatem" properties="{'parameters':{'storageAccountType':{'value':'Standard_GRS'}},'templateLink':{'uri':'https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-storage-account-create/azuredeploy.json'}, 'mode':'Incremental'}" api_version="2018-05-01" 
#bolt task run --nodes localhost azure_arm::resources_azure_deployments_delete  subscription_id=$subscriptionid resource_group_name=$resourcegroup deployment_name="qatem" properties="{'parameters':{'storageAccountType':{'value':'Standard_GRS'}},'templateLink':{'uri':'https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-storage-account-create/azuredeploy.json'}, 'mode':'Incremental'}" api_version="2018-05-01"
