resource "google_container_cluster" "gke_cluster" {
  name               = var.cluster_name
  location           = var.region
  initial_node_count = var.node_count
  node_config {
    machine_type = var.machine_type
    disk_size_gb = 10
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

# resource "google_container_cluster" "istio_config" {
#   cluster = google_container_cluster.gke_cluster.name
#   istio_config {
#     enabled = true
#   }
# }

# resource "google_compute_forwarding_rule" "example" {
#   name       = "my-forwarding-rule"
#   target     = google_compute_target_pool.example.self_link
#   port_range = "80"
# }


