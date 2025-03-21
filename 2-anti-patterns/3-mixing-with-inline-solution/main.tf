
resource "google_storage_bucket" "website-bucket-main" {
  name        = local.webBucketName
  location    = local.bucketLocation
  # ...
  
  logging {
    log_bucket  = google_storage_bucket.logs-bucket.id
  }
}

resource "google_storage_bucket" "website-bucket-euro" {
  name        = local.webBucketName_eu
  location    = local.bucketLocation_eu
  # ...
  
  logging {
    log_bucket  = google_storage_bucket.logs-bucket-euro.id
  }
}

resource "google_storage_bucket" "logs-bucket" {
  name        = local.logsBucketName
  location    = local.bucketLocation
  # ...
}

resource "google_storage_bucket" "logs-bucket-euro" {
  name        = local.logsBucketName_eu
  location    = local.bucketLocation_eu
  # ...
}
