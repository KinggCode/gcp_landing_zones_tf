resource "google_compute_disk_iam_binding" "binding" {
  project = google_compute_disk.default.project
  zone = google_compute_disk.default.zone
  name = google_compute_disk.default.name
  role = "roles/viewer"
  members = [
    "user:jane@example.com",
  ]
}