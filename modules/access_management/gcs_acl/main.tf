resource "google_storage_bucket_acl" "image-store-acl" {
  bucket = google_storage_bucket.image-store.name

  role_entity = [
    "OWNER:user-my.email@gmail.com",
    "READER:group-mygroup",
  ]
}