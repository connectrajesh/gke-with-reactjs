provider "google" {
  project = var.project_id
  region  = var.region
  version = "~> 3.0"
}

resource "google_container_cluster" "gke_cluster" {
  name               = var.cluster_name
  location           = var.region
  initial_node_count = var.node_count
  node_config {
    machine_type = var.machine_type
    labels = {
      app = "gke-cluster"
    }
  }
}

resource "google_container_node_pool" "gke_node_pool" {
  name       = "gke-node-pool"
  cluster    = google_container_cluster.gke_cluster.name
  node_count = var.node_count
  node_config {
    machine_type = var.machine_type
    labels = {
      app = "gke-node-pool"
    }
  }
}

resource "google_container_cluster_addons_config" "istio_config" {
  cluster = google_container_cluster.gke_cluster.name
  istio_config {
    enabled = true
  }
}
