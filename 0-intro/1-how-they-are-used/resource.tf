
resource "google_storage_bucket" "website-bucket" {
  name        = local.websiteBucketName
  location    = local.bucketLocation
  # ...
  
  logging {
    log_bucket  = google_storage_bucket.logs-bucket.id
  }
}

resource "google_storage_bucket" "logs-bucket" {
  name        = local.logsBucketName
  location    = local.bucketLocation
}
