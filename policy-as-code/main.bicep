targetScope = 'subscription'

resource allowedLocations 'Microsoft.Authorization/policyAssignments@2022-06-01' = {
  name: 'zt-pipeline-allowed-locations'
  properties: {
    displayName: 'ZT Pipeline - Allowed locations'
    policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c'
    parameters: {
      listOfAllowedLocations: {
        value: [
          'eastus'
        ]
      }
    }
  }
}
