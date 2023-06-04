resource "google_compute_vpn_gateway" "target_gateway" {
  name    = "vpn-1"
  network = google_compute_network.network1.id
}