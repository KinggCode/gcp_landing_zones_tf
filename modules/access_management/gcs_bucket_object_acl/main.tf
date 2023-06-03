resource "google_storage_object_acl" "image-store-acl" {
  bucket = google_storage_bucket.image-store.name
  object = google_storage_bucket_object.image.output_name

  role_entity = [
    "OWNER:user-my.email@gmail.com",
    "READER:group-mygroup",
  ]
}