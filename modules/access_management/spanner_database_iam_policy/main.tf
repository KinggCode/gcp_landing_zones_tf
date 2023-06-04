resource "google_spanner_database_iam_policy" "database" {
  instance    = "your-instance-name"
  database    = "your-database-name"
  policy_data = data.google_iam_policy.admin.policy_data
}