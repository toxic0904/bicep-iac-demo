# Bicep Infrastructure as Code (IaC) Demo

## Objective
Deploy and manage Azure infrastructure using Azure Bicep and Git.

## Technologies Used
- Microsoft Azure
- Azure CLI
- Azure Bicep
- Git and GitHub

## Infrastructure Created
- Azure Resource Group: BicepGitDemoRG
- Storage Account: nikhilbicep70103
- Region: Central India
- Storage Type: Standard_LRS
- Account Kind: StorageV2
- Access Tier: Hot

## Resource Tags
- Environment: Development
- ManagedBy: Bicep

## Files
- main.bicep: Defines the Azure Storage Account.
- .gitignore: Excludes generated and temporary files.

## Commands Used
Build the Bicep template:
az bicep build --file main.bicep

Validate the template:
az bicep lint --file main.bicep

Deploy the infrastructure:
az deployment group create \
  --resource-group BicepGitDemoRG \
  --template-file main.bicep \
  --parameters storageAccountName=nikhilbicep70103

## Version Control
The project is maintained using Git and hosted on GitHub.

## Author
Nikhil (GitHub: toxic0904)
