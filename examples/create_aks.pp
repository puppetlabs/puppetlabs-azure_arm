$base_name        = 'ENTER_BASE_NAME_HERE'
$rg               = "${base_name}-rg"
$location         = 'uksouth'
$mc               = "${base_name}-mc"
$client_id        = 'YOUR_CLIENT_ID'
$subscription_id  = 'YOUR_SUBSCRIPTION_ID'
$secret_id        = 'YOUR SECRET_ID'

azure_resource_group { $rg:
  ensure     => present,
  parameters => {},
  location   => $location
}

azure_managed_cluster { $mc:
  ensure              => present,
  location            => $location,
  resource_group_name => $rg,
  resource_name       => $mc,
  parameters          => {},
  properties          => {
  kubernetesVersion       => '1.11.5',
  dnsPrefix               => $mc,
  agentPoolProfiles       => [
    {
      name           => 'agentpool',
      count          => 3,
      vmSize         => 'Standard_DS1_v2',
      storageProfile => 'ManagedDisks',
      maxPods        => 110,
      osType         => 'Linux'
    }],
  servicePrincipalProfile => {
    clientId => $client_id,
    secret   => $secret_id
  },
  addonProfiles           => {
    httpApplicationRouting => {
      enabled => true,
    },
    omsagent               => {
      enabled  => true,
        config => {
        logAnalyticsWorkspaceResourceID => "/subscriptions/${subscription_id}/resourcegroups/defaultresourcegroup-suk/providers/microsoft.operationalinsights/workspaces/defaultworkspace-${subscription_id}-suk" #lint:ignore:140chars
      }
    }
  },
  enableRBAC              => false,
  networkProfile          => {
    networkPlugin => 'kubenet',
  }
},
}
