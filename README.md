
# Azure data science pipeline with Azure Machine Learning Service and Azure Databricks
![](https://github.com/madhavi-mal/azuredatasciencepipeline/blob/master/Azure-MLops-Datascience-pipeline-ref-architecture.png)

## Machine learning pipeline

![](https://github.com/madhavi-mal/azuredatasciencepipeline/blob/master/pipeline-flow.png)



### Enterprise security readiness Model

### Authentication
![](https://github.com/madhavi-mal/azuredatasciencepipeline/blob/master/authentication.png)

* **Setup Authentication for Azure ML resources and workflows**
* **Detailed instructions are documented [here](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-setup-authentication)**

### Authorization

You can create multiple workspaces, and each workspace can be shared by multiple people. When you share a workspace, you can control access to it by assigning these roles to users:
* ***Owner***
* ***Contributor***
* ***Reader***

### Network Security

* Use Storage account for your workspace
 Instructions on [Connecting storage account to workspace virtual network](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-enable-virtual-network#use-a-storage-account-for-your-workspace)
* Use Keyvault instance with your workspace [Instructions](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-enable-virtual-network#use-a-key-vault-instance-with-your-workspace)
* Use a Machine learning Compute [Instructions](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-enable-virtual-network#compute-instance)
* Use Azure Databricks [Instructions](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-enable-virtual-network#use-azure-databricks)
* Use Azure Firewall [Instructions](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-enable-virtual-network#use-azure-firewall)


### Data Encryption

* Encryption at rest
* Encryption in transit
* Using Azure KeyVault

### Secure webservices deployed through Azure ML with SSL 
[Detailed instructions to secure webservices with SSL](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-secure-web-service)

### Monitoring Azure Machine Learning

Azure Machine Learning logs monitoring data using Azure Monitor, which is a full stack monitoring service in Azure. Azure Monitor provides a complete set of features to monitor your Azure resources. It can also monitor resources in other clouds and on-premises.

Monitoring Azure ML pipeline for Administrators [Instructions](https://docs.microsoft.com/en-us/azure/machine-learning/monitor-azure-machine-learning)

As a data scientist or developer to monitor information specific to your model training runs see below links

[Start, monitor, and cancel training runs](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-manage-runs)

[Log metrics for training runs](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-track-experiments)

[Track eexperiments with MLflow](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-use-mlflow)

[Visualize runs with TensorBoard](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-monitor-tensorboard)

### Regenerate storage account access keys

## Deployment Model

The above conceptual security model are realized in Azure through the following architecture components:

| Layer                  | Component                  | Security Capabilities                                                              |
|------------------------|:---------------------------|------------------------------------------------------------------------------------|
| Platform Configuration | Azure Policy               | Enforce Azure SKUs. Mandatory PaaS service settings                                |
| Platform Configuration | Network Security Groups    | Ingress and egress network topology and controls. Network level segmentation.      |
| ML Authentication      | Key / Token authentication | Allow only authenticated network connections. Forward client certificates.         |
| ML Security            | Azure  Premium    | HTTP triggers from private VNET w/ access to resources in a private VNET           |
| ML Platform Security   | Azure virtual networks     | A virtual network acts as a security boundary, isolating your Azure resources from the public internet.|
| ML Platform Security   | Application Insights       | Monitor network connections. Customized alerts. Application telemetry.             |
| Data Authorization     | Data authorization service | Custom service for evaluating application API calls  

# Azure datascience Machine learning pipeline Model
![](https://github.com/madhavi-mal/azuredatasciencepipeline/blob/master/datascience-model-in-azure.png)
