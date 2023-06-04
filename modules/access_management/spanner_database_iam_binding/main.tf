resource "google_spanner_database_iam_binding" "database" {
  instance = "your-instance-name"
  database = "your-database-name"
  role     = "roles/compute.networkUser"

  members = [
    "user:jane@example.com",
  ]
}