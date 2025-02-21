
locals {
  websiteBucketName = "bucket-${var.siteName}"
  logsBucketName    = "bucket-${var.siteName}-logs"
  bucketLocation    = "US"
  labels            = {
    appName = "${var.siteName}_app"
  }
}

resource "google_storage_bucket" "website-bucket" {
  name        = local.websiteBucketName
  location    = local.bucketLocation
  labels      = local.labels
  # ...
  
  logging {
    log_bucket  = google_storage_bucket.logs-bucket.id
  }
}

resource "google_storage_bucket" "logs-bucket" {
  name        = local.logsBucketName
  location    = local.bucketLocation
  labels      = local.labels
}
