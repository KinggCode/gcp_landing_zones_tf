resource "google_compute_network_peering" "peering1" {
  name         = "peering1"
  network      = google_compute_network.default.self_link
  peer_network = google_compute_network.other.self_link
}