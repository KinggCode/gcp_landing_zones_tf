resource "google_spanner_database_iam_member" "database" {
  instance = "your-instance-name"
  database = "your-database-name"
  role     = "roles/compute.networkUser"
  member   = "user:jane@example.com"
}