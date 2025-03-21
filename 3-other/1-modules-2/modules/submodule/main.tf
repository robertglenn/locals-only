
resource "google_storage_bucket" "website-bucket" {
  name        = local.webBucketName
  location    = var.bucketLocation
  labels      = local.bucketLabels
  # ...
  
  logging {
    log_bucket  = google_storage_bucket.logs-bucket.id
  }
}

resource "google_storage_bucket" "logs-bucket" {
  name        = local.logsBucketName
  location    = var.bucketLocation
  labels      = local.bucketLabels
  # ...
}
