
resource "google_storage_bucket" "website-bucket" {
  name        = local.webBucketName
  location    = local.bucketLocation
  labels      = local.websiteBucketLabels
  # ...
  
  logging {
    log_bucket  = google_storage_bucket.logs-bucket.id
  }
}

resource "google_storage_bucket" "logs-bucket" {
  name        = local.logsBucketName
  location    = local.bucketLocation
  labels      = local.loggingBucketLabels
  # ...
}
