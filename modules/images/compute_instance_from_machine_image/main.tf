resource "google_compute_instance_from_machine_image" "tpl" {
  provider = google-beta
  name     = "instance-from-machine-image"
  zone     = "us-central1-a"

  source_machine_image = "projects/PROJECT-ID/global/machineImages/NAME"

  // Override fields from machine image
  can_ip_forward = false
  labels = {
    my_key = "my_value"
  }
}