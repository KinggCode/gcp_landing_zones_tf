
resource "google_compute_disk_iam_policy" "policy" {
  project = google_compute_disk.default.project
  zone = google_compute_disk.default.zone
  name = google_compute_disk.default.name
  policy_data = data.google_iam_policy.admin.policy_data
}