resource "google_compute_instance_group" "staging_group" {
  name      = "staging-instance-group"
  zone      = "us-central1-c"
  instances = [google_compute_instance.staging_vm.id]
  named_port {
    name = "http"
    port = "8080"
  }

  named_port {
    name = "https"
    port = "8443"
  }

  lifecycle {
    create_before_destroy = true
  }
}