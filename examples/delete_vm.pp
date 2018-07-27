$base_name    = 'ENTER_BASE_NAME_HERE'
$rg               = "${base_name}-rg-name"
$storage_account  = "${base_name}saccount"
$nsg              = "${base_name}-nsg"
$vnet             = "${base_name}-vnet"
$subnet           = "${base_name}-subnet"
$location         = 'uksouth'

# Base names for the vm's
$nic_base_name    = "${base_name}-nic"
$vm_base_name     = "${base_name}-vm"

# destroy the resources in order

azure_virtual_machine { "${vm_base_name}-1":
  ensure              => absent,
  location            => $location,
  resource_group_name => $rg,
}


azure_virtual_machine { "${vm_base_name}-2":
  ensure              => absent,
  location            => $location,
  resource_group_name => $rg,
}


azure_virtual_network { $vnet:
  ensure               => absent,
  location             => $location,
  resource_group_name  => $rg,
}

azure_subnet { $subnet:
  ensure               => absent,
  virtual_network_name => $vnet,
  resource_group_name  => $rg,
}

azure_resource_group { $rg:
  ensure              => absent,
  location            => $location
}

azure_network_security_group { $nsg :
  ensure                      => absent,
  resource_group_name         => $rg,
  location                    => $location,
  properties                  => {
  }
}


