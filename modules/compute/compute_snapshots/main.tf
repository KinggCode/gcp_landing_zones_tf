resource "google_compute_snapshot" "snapshot" {
  name        = "my-snapshot"
  source_disk = google_compute_disk.persistent.id
  zone        = "us-central1-a"
  chain_name  = "snapshot-chain"
  labels = {
    my_label = "value"
  }
  storage_locations = ["us-central1"]
}