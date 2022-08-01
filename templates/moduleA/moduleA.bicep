targetScope = 'resourceGroup'

param region string

resource azstg 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'jamjrarsd'
  location: region
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
