resource "google_compute_snapshot_iam_binding" "binding" {
  project = google_compute_snapshot.snapshot.project
  name = google_compute_snapshot.snapshot.name
  role = "roles/viewer"
  members = [
    "user:jane@example.com",
  ]
}