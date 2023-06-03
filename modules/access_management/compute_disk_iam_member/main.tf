resource "google_compute_disk_iam_member" "member" {
  project = google_compute_disk.default.project
  zone = google_compute_disk.default.zone
  name = google_compute_disk.default.name
  role = "roles/viewer"
  member = "user:jane@example.com"
}