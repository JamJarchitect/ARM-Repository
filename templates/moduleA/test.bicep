@description('This is the description for my Region parameter. Specify the region to deploy to')
param parRegion string = 'uksouth'

var varStgname = '${parRegion}jamjar322'

resource storageaccount1 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: varStgname
  tags: {
    displayName: 'storageaccount1'
  }
  location: parRegion
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
