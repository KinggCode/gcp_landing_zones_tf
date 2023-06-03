resource "google_storage_bucket_object" "image" {
  name   = "image1"
  bucket = google_storage_bucket.image-store.name
  source = "image1.jpg"
}