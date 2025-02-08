
locals {
  websiteBucketName = "bucket-${var.siteName}"
  logsBucketName    = "bucket-${var.siteName}-logs"
  bucketLocation    = "US"
}
