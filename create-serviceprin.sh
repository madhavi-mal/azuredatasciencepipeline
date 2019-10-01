az ad sp create-for-rbac -n "aks-service-principle" --skip-assignment
az ad sp show --id "aks-service-principle" --query objectId
