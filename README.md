# Deploying a TodoList React App on Google Kubernetes Engine using Terraform
This project demonstrates how to deploy a simple TodoList React application on Google Kubernetes Engine (GKE) using Terraform.

# Prerequisites

A Google Cloud Platform (GCP) account
Terraform installed locally

# Getting Started

* Create a new GCP project and enable the Kubernetes Engine API
* Clone this repository
* In the `terraform` directory, update the `provider.tf` file with your GCP credentials
* Run `terraform init` to initialize Terraform
* Run `terraform apply` to provision the resources for your GKE cluster, including the Kubernetes nodes and load balancer
* Build and push the Docker image for the TodoList app to a container registry (such as GCR or Docker Hub)
* Update the `k8s` directory with the image name and location
* Run `kubectl apply -f k8s` to deploy the TodoList app on your GKE cluster

# File Structure

    .
    ├── README.md
    ├── k8s
    │   ├── deployment.yaml
    │   ├── service.yaml
    │   └── ingress.yaml
    └── terraform
        ├── main.tf
        ├── provider.tf
        ├── variables.tf
        └── outputs.tf

* The `k8s` directory contains the Kubernetes manifests for deploying the TodoList app
* The `terraform` directory contains the Terraform configuration for provisioning the GKE cluster

# Note

Make sure to clean up the resources created by Terraform by running `terraform destroy`. Keep in mind that this will also delete the GKE cluster and all associated resources, which may result in charges to your GCP account.

Also, you might want to use a different version of the react app if you want to test with the latest version.

This is a simple example, the real-world scenario might have different requirements.

# Building and Pushing the ReactJS Todo List App

* Make sure you have Node.js and npm installed on your machine.
* Navigate to the root of the project directory and run `npm install` to install all the necessary dependencies.
* Run `npm run build` to build the production version of the app.
* Navigate to the `build` directory and run `docker build -t <your-docker-username>/todo-list-app .` to build the Docker image.
* Run docker push <your-docker-username>/todo-list-app to push the image to your Docker Hub repository.
* Update the `image` field in the `deployment.yaml` file with the name of your newly pushed image.
* Run `kubectl apply -f k8s/` to deploy the app to your GKE cluster.
* The Todo List App should now be accessible through the URL specified in the `ingress.yaml` file.

# Note
    
Make sure to replace `<your-docker-username>` with your actual Docker Hub username.
