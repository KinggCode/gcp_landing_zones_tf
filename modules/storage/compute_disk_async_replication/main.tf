resource "google_compute_disk_async_replication" "replication" {
  primary_disk = google_compute_disk.primary-disk.id
  secondary_disk {
    disk  = google_compute_disk.secondary-disk.id
  }
}