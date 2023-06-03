resource "google_compute_router_interface" "foobar" {
  name       = "interface-1"
  router     = "router-1"
  region     = "us-central1"
  ip_range   = "169.254.1.1/30"
  vpn_tunnel = "tunnel-1"
}