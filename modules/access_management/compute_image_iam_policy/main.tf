resource "google_compute_image_iam_policy" "policy" {
  project = google_compute_image.example.project
  image = google_compute_image.example.name
  policy_data = data.google_iam_policy.admin.policy_data
}
