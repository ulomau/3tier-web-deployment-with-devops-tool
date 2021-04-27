## Create and deploy a web application called Bucketlist on GKE using Terraform, Github Actions and Bash script
## This Project handles the creation and deployment of a web app  on Google Kubernetes clusters by applying DevOps tools. It creates a Google kubernetes engine clusters with Terraform as the Infrastructure as code (IAC), GitHub Actions workflow pipeline as the CICD and Basch script to automate the deploymnet of a web app (Bucketlist) on the GKE clusters 
 ## Basic project requirements:
 ### Before this project can be implemented, you must ensure that the following pre-requisites are fulfilled
 * GitHub account
 * GCP account with billing enabled
 * GCP project and service account enabled with the right permissions
 * Google SDK CLI installed in your local terminal
 * Terraform for IAC installed in your local terminal
 * GitHub Actions
 * Bash script for automation 

## Versions
## The Terraform version used is Terraform 0.12. 
## kubectl 1.9.x
## Terraform Provider for GCP v3.41

## Procedure:

* Create a GCP project, enable billing and API permissions.
* Create gcp service account on the created project and create a service secret.json key and also GCP storage bucket for terraform state.
* Install Google Cloud SDK in your Local terminal
* export GCP credential into the environment for authentication $ export GOOGLE_APPLICATION_CREDENTIALS=~/secret.json
* Install Terraform required version in your local terminal
* Create Terraform main.tf, backend.tf, provider.tf, variable.tf
* Commit the Code to a GitHub repo
* Add the Google secret.json encoded key to Github environmetal variable and secret
* Create a workflow pipeline on GitHub Actions to trigger GKE build
* Write a bash script on GCP cloud shell to automate Bucketlist wep app deployment.


## To configure a GCP service account for this project, it must be enabled with the following roles:

* roles/compute.viewer
* roles/compute.securityAdmin (only required if add_cluster_firewall_rules is set to true)
* roles/container.clusterAdmin
* roles/container.developer
* roles/iam.serviceAccountUser
* roles/resourcemanager.projectIamAdmin
* role roles/container.admin
* role roles/compute.admin

## In order to be able to use the Service Account you must activate the following APIs on the project where the Service Account was created:

*  gcloud services enable servicenetworking.googleapis.com &&
* gcloud services enable cloudresourcemanager.googleapis.com &&
* gcloud services enable container.googleapis.com &&
* gcloud services enable compute.googleapis.com


 Terraform commands
```
terraform init
terraform plan
terraform apply
```
### To delete the GKE cluster: "terraform destroy"
## About the web application "Bucketlist"
### Bucketlist is simply a web app were you sign up and record your bucketlist and mark it off when done. It is like a todo list but in this case for bucketlist activities.
## Github url containing web app    [GitHub](http://https://github.com/ulomau/bucketlist-api)  
# Bash script code for the web app deployment on GKE

```
#!/bin/bash

# Automate the deployment of 3-tier web application on gcp

# Functions:

services.yaml() {

echo "creating services.yaml ..."
kubectl create -f services.yaml


}
ingress.yaml() {

echo "kubectl create -f ingress.yaml!"
kubectl create -f ingress.yaml

}

deployments.yaml() {

echo "kubectl create -f deployments.yaml!"
kubectl create -f deployments.yaml

}


secrets.yaml() {

echo "secrets.yaml"
kubectl create -f secrets.yaml

}

completed() {
echo "deplyments created..."
exit

}


# Execution

# deploying services.yaml, ingress.yaml,deployments.yaml, secrets.yaml

var="services.yaml"

if [ "$var" == "services.yaml" ]; then
    services.yaml
    ingress.yaml
    deployments.yaml
    secrets.yaml
    completed

fi

if [  -n "$var"  ]; then
echo  "Error Invalid argument"

fi

    services.yaml
    ingress.yaml
    deployments.yaml
    secrets.yaml
    completed
```

### Helm and Tiller, Kubernetes package manager was used to install Nginx ingress (Note my ingress could not deploy because GCP threw an error that i have exceeded quota for free tier)

## Warning! 
### Ensure not to expose your GCP service secret by commiting it to your repo. Encode the value of key with base64  

### or

### Before the key can be added to Github environmental variable, it needs to be altered a bit in order to be stored in the variable.You can do this by removing all the newline characters from the .json key value. To do that, use the command below:
### First open the file with vim editor vi j.son-key

```
press :

Add the following 
%s;\n; ;g
Press enter.

press : again

type wq!

```

### Add the value into Github environmental variable and secret.

