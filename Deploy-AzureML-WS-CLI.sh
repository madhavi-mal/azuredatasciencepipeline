#Create resource group for data science pipeline

az group create --name azure-datascience-pipeline-rg --location eastus --tags "env=dev" "app=harmony"

az group list

az group export --name azure-datascience-pipeline-rg


 


