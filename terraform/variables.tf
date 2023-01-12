variable "project_id" {
  default = "my-gcp-project"
}

variable "cluster_name" {
  default = "my-gke-cluster"
}

variable "region" {
  default = "us-central1"
}

variable "node_count" {
  default = 3
}

variable "node_machine_type" {
  default = "n1-standard-1"
}

variable "app_image" {
  default = "gcr.io/my-gcp-project/my-react-app:latest"
}

variable "app_container_port" {
  default = 3000
}

You can modify the above code according to your requirement.

# The variables.tf file declares variables that can be used in other parts of the Terraform configuration. For example, the project_id, cluster_name, region, node_count, node_machine_type, app_image, and app_container_port variables are used in the main.tf file to create the GKE cluster and deploy the React.js app.