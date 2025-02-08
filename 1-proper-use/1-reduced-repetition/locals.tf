
# Simple Example
locals {
  webBucketName = "bucket-${var.site}"
  logsBucketName    = "bucket-${var.site}-logs"
  bucketLocation    = "US"
  bucketLabels    = {
    appName = var.site
  }
}
