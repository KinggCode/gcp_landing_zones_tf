resource "google_compute_snapshot_iam_member" "member" {
  project = google_compute_snapshot.snapshot.project
  name = google_compute_snapshot.snapshot.name
  role = "roles/viewer"
  member = "user:jane@example.com"
}