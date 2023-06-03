resource "google_compute_interconnect_attachment" "on_prem" {
  name                     = "on-prem-attachment"
  edge_availability_domain = "AVAILABILITY_DOMAIN_1"
  type                     = "PARTNER"
  router                   = google_compute_router.foobar.id
  mtu                      = 1500
}