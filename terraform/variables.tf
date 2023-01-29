variable "project_id" {
  default = "supple-bank-307921"
}

variable "cluster_name" {
  default = "my-gke-cluster"
}

variable "region" {
  default = "europe-west2"
}

variable "zone" {
  default = "europe-west2-b"
}

variable "node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "app_image" {
  default = "gcr.io/my-gcp-project/my-react-app:latest"
}

variable "app_container_port" {
  default = 3000
}

variable "app_container_name" {
  default = "my-react-app"
}

variable "app_container_image" {
  default = "gcr.io/my-gcp-project/my-react-app:latest"
}

variable "credentials_file" {
  default = "./credentials.json"
}