resource "google_compute_instance_from_template" "tpl" {
  name = "instance-from-template"
  zone = "us-central1-a"

  source_instance_template = google_compute_instance_template.tpl.self_link_unique

  // Override fields from instance template
  can_ip_forward = false
  labels = {
    my_key = "my_value"
  }
}