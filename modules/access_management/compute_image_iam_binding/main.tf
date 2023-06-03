resource "google_compute_image_iam_binding" "binding" {
  project = google_compute_image.example.project
  image = google_compute_image.example.name
  role = "roles/compute.imageUser"
  members = [
    "user:jane@example.com",
  ]

  condition {
    title       = "expires_after_2019_12_31"
    description = "Expiring at midnight of 2019-12-31"
    expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
  }
}