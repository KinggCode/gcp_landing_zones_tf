resource "google_compute_firewall_policy_rule" "default" {
  firewall_policy = google_compute_firewall_policy.default.id
  description = "Example Resource"
  priority = 9000
  enable_logging = true
  action = "allow"
  direction = "EGRESS"
  disabled = false
  match {
    layer4_configs {
      ip_protocol = "tcp"
      ports = [80, 8080]
    }
    dest_ip_ranges = ["11.100.0.1/32"]
  }
}
