output "load_balancer_ip" {
  value = google_compute_forwarding_rule.example.ip_address
}
