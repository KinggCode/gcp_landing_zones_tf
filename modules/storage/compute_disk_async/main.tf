resource "google_compute_disk" "secondary" {
  provider = google-beta

  name  = "async-secondary-test-disk"
  type  = "pd-ssd"
  zone  = "us-east1-c"

  async_primary_disk {
    disk = google_compute_disk.primary.id
  }

  physical_block_size_bytes = 4096
}