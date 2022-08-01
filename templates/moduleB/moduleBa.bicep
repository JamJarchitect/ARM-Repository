targetScope = 'resourceGroup'

param region string

var stgname = 'jajm${region}'

resource stg1 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: stgname
  location: region
  sku: {
    name: 'Standard_LRS' 
  }
  kind: region
}
