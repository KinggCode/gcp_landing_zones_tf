resource "google_compute_router" "foobar" {
  name    = "my-router"
  network = google_compute_network.foobar.name
  encrypted_interconnect_router = true

  bgp {
    asn               = 64514
    advertise_mode    = "CUSTOM"
    advertised_groups = ["ALL_SUBNETS"]
    advertised_ip_ranges {
      range = "1.2.3.4"
    }
    advertised_ip_ranges {
      range = "6.7.0.0/16"
    }
  }
}