#!/bin/bash
# --------------------------------------------------------------------------------------------

# Copyright (c) Microsoft Corporation. All rights reserved.

# Licensed under the MIT License. See License.txt in the project root for license information.

# --------------------------------------------------------------------------------------------

#Install the machine learning extension
#az extension add -n azure-cli-ml

#rg = "datascience-pipeline-eastus-rg"
#ws = "aml-ws"
echo "Enter resource group name"
read rg

echo "Enter workspace name"
read ws

echo "Enter location "
read location
#az login 

#$location = "eastus"
#Create a resource group
#az group create --name $rg --location $location

#create a workspace
#az ml workspace create -w $ws -g $rg

#Connect local project t workspace

cd /home/madhavi/clouddrive/datascience/mlcliexample/MLOps
#az ml folder attach -w $ws -g $rg

#Create compute target for training
#az ml computetarget create amlcompute -n cpu --max-nodes 4 --vm-size Standard_D2_V2


#Submit the training run
cd /home/madhavi/clouddrive/datascience/mlcliexample/MLOps/model-training
#az ml run submit-script -e myexperiment -c sklearn -d training-env.yml -t runoutput.json train-sklearn.py

#register the model
#az ml model register -n mymodel -f runoutput.json --asset-path "outputs/ridge_0.95.pkl" -t registeredmodel.json

#Model versioning
#az ml model download -i "mymodel:1" -t .
#az ml model register -n mymodel -p "ridge_0.95.pkl"

#deploy the model
cd /home/madhavi/clouddrive/datascience/mlcliexample/MLOps/model-deployment
#az ml model deploy -n myservice -m "mymodel:1" --ic inferenceConfig.yml --dc aciDeploymentConfig.yml

#the scoring URI
az ml service show -n myservice

#send data to service
az ml service run -n myservice -d '{"data":[[1,2,3,4,5,6,7,8,9,10]]}'


