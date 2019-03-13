$base_name        = 'ENTER_BASE_NAME_HERE'
$rg               = "${base_name}-rg-name"
$dep              = "${base_name}-dep-name"
$location         = 'westeurope'

azure_resource_group { $rg:
  ensure     => present,
  parameters => {},
  location   => $location
}

azure_deployment_extended { $dep:
  ensure              => present,
  deployment_name     => $dep,
  name                => $dep,
  parameters          => {},
  properties          => {
    mode         => 'Complete',
    parameters   => {'storageAccountType' => {'value' => 'Standard_GRS'}},
    templateLink => {
      uri => 'https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-storage-account-create/azuredeploy.json',
    },
  },
  resource_group_name => $rg,
}
