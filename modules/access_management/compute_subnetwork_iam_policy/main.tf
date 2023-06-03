resource "google_compute_subnetwork_iam_policy" "policy" {
  project = google_compute_subnetwork.network-with-private-secondary-ip-ranges.project
  region = google_compute_subnetwork.network-with-private-secondary-ip-ranges.region
  subnetwork = google_compute_subnetwork.network-with-private-secondary-ip-ranges.name
  policy_data = data.google_iam_policy.admin.policy_data
}