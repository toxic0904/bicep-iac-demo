param location string = 'centralindia'
param storageAccountName string

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
  tags: {
    Environment: 'Development'
    ManagedBy: 'Bicep'
  }
}

output storageAccountId string = storageAccount.id
