resource "google_compute_snapshot_iam_policy" "policy" {
  project = google_compute_snapshot.snapshot.project
  name = google_compute_snapshot.snapshot.name
  policy_data = data.google_iam_policy.admin.policy_data
}