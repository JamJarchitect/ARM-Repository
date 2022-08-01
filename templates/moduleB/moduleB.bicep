targetScope = 'subscription'

param region string

resource stgrg1 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'stgrg1'
  location: region
}

module stgdeploy 'moduleBa.bicep' = {
  name: 'stgdeploy1' 
  scope: resourceGroup(stgrg1.name)
  params: {
    region: region
  }
}
