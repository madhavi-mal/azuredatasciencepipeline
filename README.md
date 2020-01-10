# azuredatasciencepipeline
# Azure data science pipeline with Azure Machine Learning Serivice and Azure databricks


## Machine learning pipeline

<img src="/pipeline-flow.png" width="600"/>



<img src="/Azure-MLops-Datascience-pipeline-ref-architecture.png" width="600"/>

## Enterprise security readiness Model

* **Authentication**
<img src="/authentication.png" width="600"/>

* **Setup Authentication for Azure ML resources and workflows**
* **Detailed instructions are documented [here](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-setup-authentication)**

* **Authorization**

You can create multiple workspaces, and each workspace can be shared by multiple people. When you share a workspace, you can control access to it by assigning these roles to users:
* ***Owner***
* ***Contributor***
* ***Reader***


## Deployment Model

The above conceptual security model are realized in Azure through the following architecture components:

| Layer                  | Component                  | Security Capabilities                                                              |
|------------------------|:---------------------------|------------------------------------------------------------------------------------|
| Platform Configuration | Azure Policy               | Enforce Azure SKUs. Mandatory PaaS service settings                                |
| Platform Configuration | Network Security Groups    | Ingress and egress network topology and controls. Network level segmentation.      |
| ML Authentication      | Key / Token authentication | Allow only authenticated network connections. Forward client certificates.         |
| ML Security            | Azure  Premium    | HTTP triggers from private VNET w/ access to resources in a private VNET           |
| ML Platform Security   | Azure virtual networks     | A virtual network acts as a security boundary, isolating your Azure resources from the public internet.|
| Application Security   | Azure API Management       | Centralized data and control plane for microservices|
| ML Platform Security   | Application Insights       | Monitor network connections. Customized alerts. Application telemetry.             |
| Data Authorization     | Data authorization service | Custom service for evaluating application API calls  
