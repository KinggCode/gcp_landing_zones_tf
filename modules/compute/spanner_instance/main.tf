resource "google_spanner_instance" "main" {
  config       = "regional-europe-west1"
  display_name = "main-instance"
  num_nodes    = 1
}
