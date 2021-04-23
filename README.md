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
## The Terraform version used is Terraform 0.12. If you haven't upgraded and need a Terraform 0.11.x-compatible version of this module, the last released version intended for Terraform 0.11.x is 3.0.0.
## kubectl 1.9.x
## Terraform Provider for GCP v3.41

## Procedure:

1. Create a GCP project, enable billing and API permissions.
2. Create gcp service account on the created project and create a service secret.json key and also GCP storage bucket for terraform state.
3. Install Google Cloud SDK in your Local terminal
4. export GCP credential into the environment for authentication $ export GOOGLE_APPLICATION_CREDENTIALS=~/secret.json
5. Install Terraform required version in your local terminal
6. Create Terraform main.tf, backend.tf, provider.tf, variable.tf
7. Commit the Code to a GitHub repo
8. Add the Google secret.json encoded key to Github environmetal variable and secret
9. Create a workflow pipeline on GitHub Actions to trigger GKE build
10. Write a bash script on GCP cloud shell to automate Bucketlist wep app deployment.


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

# Bash script code for the web app deployment

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







